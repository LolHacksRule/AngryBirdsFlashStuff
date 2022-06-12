package §<!`§
{
   import §#]§.*;
   import §4!!§.*;
   import §48§.*;
   import §55§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §[!w§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[!w§ = new b2Mat22();
         }
      }
      
      b2internal var §&!3§:b2Vec2;
      
      b2internal var §@"2§:Vector.<b2Vec2>;
      
      b2internal var §6"!§:Vector.<b2Vec2>;
      
      b2internal var §0y§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            while(true)
            {
               §<";§ = b2internal::@!#;
               while(!_loc1_)
               {
                  this.§&!3§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§@"2§ = new Vector.<b2Vec2>();
                     addr100:
                     while(true)
                     {
                        this.§6"!§ = new Vector.<b2Vec2>();
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §%I§ = b2Settings.b2_polygonRadius;
            §§goto(addr58);
         }
         §§goto(addr42);
      }
      
      public static function §&" §(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || b2PolygonShape)
         {
            _loc3_.§'b§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §="%§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || _loc3_)
         {
            _loc3_.§ !r§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §0N§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§2j§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §!R§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§"!-§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §@a§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§1">§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §0!#§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(_loc17_ || b2PolygonShape)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(_loc17_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(_loc17_ || _loc3_)
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
                                       while(!_loc18_)
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
                                                if(!_loc18_)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr355:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      addr196:
                                                      if(_loc18_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc17_ || param2)
                                                      {
                                                         addr221:
                                                         if(!_loc18_)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               addr225:
                                                               if(_loc17_ || param1)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr235:
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        addr242:
                                                                        if(!(_loc18_ && b2PolygonShape))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           loop30:
                                                                           while(_loc17_)
                                                                           {
                                                                              if(!(_loc17_ || param2))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              _loc3_.§&3§(new b2Vec2(_loc5_,_loc6_));
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_.§&3§(_loc9_);
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    _loc3_.§&3§(_loc10_);
                                                                                    loop33:
                                                                                    while(!_loc18_)
                                                                                    {
                                                                                       if(!(_loc18_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc17_ || param2))
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             §§push(_loc16_);
                                                                                             if(!(_loc18_ && b2PolygonShape))
                                                                                             {
                                                                                                §§push(§§pop() * _loc7_);
                                                                                             }
                                                                                             §§pop().§8`§(§§pop());
                                                                                             loop35:
                                                                                             while(_loc17_)
                                                                                             {
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_++;
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop34;
                                                                                                         }
                                                                                                         continue loop31;
                                                                                                      }
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                   continue;
                                                                                                }
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(_loc17_ || param2)
                                                                                                      {
                                                                                                         if(_loc17_ || param2)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(_loc15_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr280:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr281:
                                                                                                                  addr314:
                                                                                                                  while(_loc17_ || b2PolygonShape)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  while(_loc17_)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr319:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc13_);
                                                                                                                        }
                                                                                                                        addr319:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        addr322:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr281);
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr280);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         addr299:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(!(_loc18_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr314);
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr337:
                                                                                                                           addr356:
                                                                                                                           while(!(_loc18_ && b2PolygonShape))
                                                                                                                           {
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           addr356:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              addr357:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc10_.y);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr242);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                     addr333:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr319);
                                                                                                            }
                                                                                                            while(!_loc18_)
                                                                                                            {
                                                                                                               §§goto(addr333);
                                                                                                               §§push(_loc6_);
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                            §§goto(addr225);
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr319);
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             continue loop33;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr357);
                                                                                    }
                                                                                 }
                                                                                 continue loop30;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 if(!(_loc18_ && param2))
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§goto(addr196);
                                                                                       }
                                                                                       §§goto(addr321);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr355);
                                                                                 }
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                           §§goto(addr281);
                                                                           addr296:
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     §§goto(addr281);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                }
                                                §§goto(addr356);
                                             }
                                             continue loop1;
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
               §§goto(addr143);
            }
            §§goto(addr95);
         }
         if(!_loc18_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc18_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!(_loc18_ && param1))
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
      
      b2internal static function §"[§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(_loc27_ || b2PolygonShape)
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(!(_loc26_ && param1))
               {
                  _loc5_[param3] = _loc5_[0];
               }
               if(_loc27_ || param3)
               {
                  if(_loc27_ || param3)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     addr121:
                  }
                  _loc4_++;
               }
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr121);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(_loc27_)
         {
            §§push(1);
            if(_loc27_)
            {
               _loc4_ = §§pop();
               if(_loc27_ || b2PolygonShape)
               {
                  addr142:
                  loop113:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1159:
                     while(§§pop() <= param3)
                     {
                        _loc7_ = _loc5_[int(_loc4_ - 1)];
                        if(!(_loc26_ && b2PolygonShape))
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
                                                         while(!_loc26_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
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
                                                                        if(_loc27_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          loop23:
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
                                                                                                      addr897:
                                                                                                      while(!_loc26_)
                                                                                                      {
                                                                                                         §§push(Number(Number.MAX_VALUE));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_ = §§pop();
                                                                                                            addr891:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                               addr881:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr882:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     addr883:
                                                                                                                     while(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(-Number.MAX_VALUE);
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                      addr622:
                                                                                                      if(!(_loc27_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc16_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            if(§§pop() > §§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(_loc22_);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop67:
                                                                                                                     while(_loc27_ || param1)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc22_);
                                                                                                                           if(!(_loc26_ && b2PolygonShape))
                                                                                                                           {
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              §§goto(addr622);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr610:
                                                                                                                        loop38:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              if(§§pop() >= param3)
                                                                                                                              {
                                                                                                                                 loop39:
                                                                                                                                 while(!(_loc26_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          loop98:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop76:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc20_ = §§pop();
                                                                                                                                                addr836:
                                                                                                                                                loop84:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   addr799:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         break loop84;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      loop82:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                               addr812:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr813:
                                                                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr811:
                                                                                                                                                         }
                                                                                                                                                         addr814:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop71:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc21_ = §§pop();
                                                                                                                                                               addr816:
                                                                                                                                                               if(_loc27_ || b2PolygonShape)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  loop70:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc27_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        loop85:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr848:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc27_ || param2))
                                                                                                                                                                              {
                                                                                                                                                                                 break loop85;
                                                                                                                                                                              }
                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop98;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop6;
                                                                                                                                                                        addr847:
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr784:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           addr787:
                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                           loop73:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr789:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                                 addr792:
                                                                                                                                                                              }
                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_ && b2PolygonShape)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop78:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                   addr760:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop73;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                                                                         break loop67;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop78;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr759:
                                                                                                                                                                                             }
                                                                                                                                                                                             loop69:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr715:
                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr723:
                                                                                                                                                                                                   if(§§pop() < _loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc27_ || param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop69;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop70;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                                                                               break loop39;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr724:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop65:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                      addr662:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                         addr663:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc27_ || param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop82;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop65;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop66:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr676:
                                                                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc26_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop76;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr687:
                                                                                                                                                                                                                        if(!(_loc27_ || param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc16_ = §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop38;
                                                                                                                                                                                                                                 §§goto(addr816);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr687);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop15;
                                                                                                                                                                                                                           addr873:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                                                                 continue loop67;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr760);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr697:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr890);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr765);
                                                                                                                                                                                                                     addr603:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop66;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr735);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr611);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr811);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                   addr660:
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop71;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                             addr713:
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr860:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop38;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop7;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr812);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr825:
                                                                                                                                                                  continue loop10;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr876);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr883);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                if(_loc27_ || b2PolygonShape)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         loop56:
                                                                                                                                                         while(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(_loc26_ && b2PolygonShape)
                                                                                                                                                               {
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               while(_loc27_ || b2PolygonShape)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           while(_loc27_ || b2PolygonShape)
                                                                                                                                                                           {
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              while(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0.95);
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       addr553:
                                                                                                                                                                                       while(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc27_ || param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            while(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc6_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                                                                  loop44:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().col1);
                                                                                                                                                                                                                     addr448:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        addr449:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           addr450:
                                                                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.R);
                                                                                                                                                                                                                              continue loop44;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr897);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr814);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1157);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr756);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr723);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr663);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr784);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr552:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr571);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop21;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr813);
                                                                                                                                                                           addr539:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr552);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr784);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr676);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  break loop56;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr789);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr553);
                                                                                                                                                }
                                                                                                                                                §§goto(addr784);
                                                                                                                                             }
                                                                                                                                             §§goto(addr539);
                                                                                                                                          }
                                                                                                                                          §§goto(addr715);
                                                                                                                                       }
                                                                                                                                       §§goto(addr813);
                                                                                                                                    }
                                                                                                                                    §§goto(addr816);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                    {
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr660);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr836);
                                                                                                                                    §§goto(addr735);
                                                                                                                                 }
                                                                                                                                 §§goto(addr891);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                              }
                                                                                                                              §§goto(addr847);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr611:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc17_ = §§pop();
                                                                                                                           §§goto(addr860);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§goto(addr713);
                                                                                                                        }
                                                                                                                        §§goto(addr792);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr636);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr601);
                                                                                                         }
                                                                                                         §§goto(addr781);
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
                                                         continue loop8;
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
                        §§goto(addr400);
                        continue loop113;
                     }
                  }
               }
               return;
            }
            §§goto(addr1159);
         }
         §§goto(addr142);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc2_ && _loc2_))
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
         if(!(_loc5_ && _loc2_))
         {
            super.Set(param1);
            if(!(_loc5_ && _loc3_))
            {
               §§goto(addr38);
            }
            §§goto(addr42);
         }
         addr38:
         if(param1 is b2PolygonShape)
         {
            addr42:
            _loc2_ = param1 as b2PolygonShape;
            if(!_loc5_)
            {
               this.§&!3§.SetV(_loc2_.§&!3§);
               while(true)
               {
                  this.§0y§ = _loc2_.§0y§;
                  loop1:
                  while(_loc4_ || param1)
                  {
                     while(true)
                     {
                        this.§@l§(this.§0y§);
                        while(_loc4_)
                        {
                           _loc3_ = 0;
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                           loop4:
                           while(true)
                           {
                              if(_loc3_ < this.§0y§)
                              {
                                 this.§@"2§[_loc3_].SetV(_loc2_.§@"2§[_loc3_]);
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       this.§6"!§[_loc3_].SetV(_loc2_.§6"!§[_loc3_]);
                                       while(true)
                                       {
                                          _loc3_++;
                                          if(!(_loc4_ || param1))
                                          {
                                             break;
                                          }
                                          if(!(_loc5_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                if(true)
                                                {
                                                   break loop6;
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr156);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr145);
         }
         addr156:
      }
      
      public function §'b§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(_loc7_ || this)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc7_ || _loc3_)
         {
            this.§ !r§(_loc3_,param2);
         }
      }
      
      public function § !r§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(!(_loc7_ && param1))
         {
            §§push(param2);
            if(!_loc7_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr241:
                     while(true)
                     {
                        param2 = §§pop();
                        addr242:
                        while(true)
                        {
                        }
                     }
                  }
                  addr238:
               }
               loop1:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  while(true)
                  {
                     this.§0y§ = param2;
                     while(!_loc7_)
                     {
                        this.§@l§(param2);
                        loop4:
                        while(!(_loc7_ && this))
                        {
                           while(true)
                           {
                              _loc3_ = 0;
                              if(_loc7_ && param1)
                              {
                                 continue loop4;
                              }
                              if(_loc7_ && param1)
                              {
                                 continue loop1;
                              }
                              if(_loc8_)
                              {
                                 break;
                              }
                              §§goto(addr238);
                           }
                           loop8:
                           while(true)
                           {
                              §§push(_loc3_);
                              while(true)
                              {
                                 §§push(this.§0y§);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop11:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc8_ || this)
                                             {
                                                while(true)
                                                {
                                                   addr314:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      while(true)
                                                      {
                                                         §§push(this.§0y§);
                                                         addr317:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                               }
                                                               break loop11;
                                                            }
                                                            §§push(_loc3_);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               addr122:
                                                               while(!(_loc7_ && _loc3_))
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     addr105:
                                                                     _loc5_ = §§pop();
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr117:
                                             }
                                             break;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       this.§@"2§[_loc3_].SetV(param1[_loc3_]);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          _loc3_++;
                                          continue loop8;
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr317);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr241);
         }
         §§goto(addr218);
      }
      
      public function §2j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§0y§ = 4;
            while(true)
            {
               this.§@l§(4);
               while(true)
               {
                  this.§@"2§[0].Set(-param1,-param2);
                  while(!(_loc3_ && this))
                  {
                     this.§@"2§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§@"2§[2].Set(param1,param2);
                        while(true)
                        {
                           this.§@"2§[3].Set(-param1,param2);
                           addr120:
                           while(!_loc3_)
                           {
                              this.§6"!§[0].Set(0,-1);
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §"!-§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§0y§ = 4;
            while(true)
            {
               this.§@l§(4);
            }
            addr160:
         }
         while(true)
         {
            this.§@"2§[0].Set(-param1,-param2);
            loop2:
            while(_loc8_)
            {
               this.§@"2§[1].Set(param1,-param2);
               loop3:
               while(true)
               {
                  this.§@"2§[2].Set(param1,param2);
                  loop4:
                  while(true)
                  {
                     this.§@"2§[3].Set(-param1,param2);
                     loop5:
                     while(true)
                     {
                        this.§6"!§[0].Set(0,-1);
                        while(true)
                        {
                           this.§6"!§[1].Set(1,0);
                           continue loop5;
                           addr38:
                           if(!(_loc8_ || param2))
                           {
                              continue;
                           }
                           if(!_loc8_)
                           {
                              continue loop4;
                           }
                           if(!_loc8_)
                           {
                              continue loop3;
                           }
                           addr49:
                           if(_loc7_)
                           {
                              continue loop2;
                           }
                           if(false)
                           {
                              loop9:
                              while(true)
                              {
                                 this.§6"!§[3].Set(-1,0);
                                 while(!_loc7_)
                                 {
                                    this.§&!3§ = param3;
                                    if(_loc7_ && this)
                                    {
                                       continue;
                                    }
                                    addr31:
                                    if(!(_loc7_ && this))
                                    {
                                       §§goto(addr38);
                                    }
                                    else
                                    {
                                       while(!_loc7_)
                                       {
                                          continue loop9;
                                          §§goto(addr31);
                                       }
                                       §§goto(addr160);
                                       addr72:
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop2;
                           }
                           var _loc5_:b2Transform;
                           (_loc5_ = new b2Transform()).position = param3;
                           if(!(_loc7_ && param3))
                           {
                              _loc5_.R.Set(param4);
                           }
                           var _loc6_:int = 0;
                           addr182:
                           if(_loc6_ >= this.§0y§)
                           {
                              if(!_loc8_)
                              {
                                 addr194:
                                 if(_loc8_)
                                 {
                                    §§goto(addr182);
                                 }
                                 if(!_loc7_)
                                 {
                                    _loc6_++;
                                    §§goto(addr194);
                                 }
                                 this.§6"!§[_loc6_] = b2Math.§?"1§(_loc5_.R,this.§6"!§[_loc6_]);
                                 §§goto(addr194);
                                 addr236:
                              }
                              return;
                           }
                           this.§@"2§[_loc6_] = b2Math.§2C§(_loc5_,this.§@"2§[_loc6_]);
                           §§goto(addr236);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §1">§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§0y§ = 2;
            loop0:
            while(true)
            {
               this.§@l§(2);
               while(true)
               {
                  this.§@"2§[0].SetV(param1);
                  while(true)
                  {
                     this.§@"2§[1].SetV(param2);
                     loop3:
                     while(true)
                     {
                        §§push(this.§&!3§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr170:
                           while(true)
                           {
                              §§push(param1.x);
                              addr172:
                              while(true)
                              {
                                 §§push(param2.x);
                                 addr174:
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
                                          addr187:
                                          while(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     loop13:
                     while(!_loc4_)
                     {
                        this.§6"!§[1].x = -this.§6"!§[0].x;
                        while(true)
                        {
                           if(_loc4_ && param2)
                           {
                              continue loop13;
                           }
                           §§goto(addr62);
                           addr85:
                           this.§6"!§[1].y = -this.§6"!§[0].y;
                           if(!_loc4_)
                           {
                              return;
                           }
                        }
                        §§goto(addr165);
                     }
                  }
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr117);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(!_loc11_)
         {
            §§push(§§pop() - param1.position.x);
            if(_loc12_ || param1)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(_loc12_)
            {
               §§push(§§pop() - param1.position.y);
               if(!(_loc11_ && param2))
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc5_);
               if(!(_loc11_ && this))
               {
                  §§push(_loc4_.col1.x);
                  if(_loc12_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc12_ || _loc3_)
                     {
                        §§push(_loc6_);
                        if(!_loc11_)
                        {
                           addr89:
                           §§push(§§pop() * _loc4_.col1.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc12_ || _loc3_)
                        {
                           addr101:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(!(_loc11_ && param1))
                     {
                        §§push(_loc4_.col2.x);
                        if(!_loc11_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_ || param1)
                           {
                              addr124:
                              §§push(_loc6_);
                              if(_loc12_ || this)
                              {
                                 addr132:
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
                              if(_loc9_ >= this.§0y§)
                              {
                                 return true;
                              }
                              _loc3_ = this.§@"2§[_loc9_];
                              if(!(_loc11_ && param1))
                              {
                                 §§push(_loc7_);
                                 if(_loc12_)
                                 {
                                    §§push(_loc3_.x);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc11_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc12_ || this)
                                          {
                                             _loc5_ = §§pop();
                                             addr209:
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                §§push(_loc8_);
                                                if(!_loc11_)
                                                {
                                                   addr204:
                                                   §§push(§§pop() - _loc3_.y);
                                                   if(!_loc11_)
                                                   {
                                                      addr207:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                             _loc3_ = this.§6"!§[_loc9_];
                                             if(!_loc11_)
                                             {
                                                §§push(_loc3_.x);
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc3_.y);
                                                         if(!_loc11_)
                                                         {
                                                            addr231:
                                                            §§push(§§pop() * _loc6_);
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc11_ && param2))
                                                                  {
                                                                     addr266:
                                                                     §§push(§§pop());
                                                                     if(_loc12_)
                                                                     {
                                                                        addr269:
                                                                        _loc10_ = §§pop();
                                                                     }
                                                                     addr271:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr288:
                                                                        _loc9_++;
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               §§push(0);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr288);
                                          }
                                          _loc6_ = §§pop();
                                          §§goto(addr209);
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr209);
                           }
                           return false;
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr89);
               }
               §§goto(addr101);
            }
            §§goto(addr58);
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
         §§push(param2.§,!§);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_ || param2)
         {
            §§push(param2.p1);
            if(_loc21_)
            {
               §§push(§§pop().x);
               if(_loc21_ || param2)
               {
                  §§push(param3.position);
                  if(_loc21_ || param1)
                  {
                     §§push(§§pop().x);
                     if(_loc21_ || param2)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_)
                        {
                           addr81:
                           §§push(Number(§§pop()));
                           if(!_loc20_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc20_ && this))
                              {
                                 addr94:
                                 §§push(param2.p1.y);
                                 if(_loc21_ || param1)
                                 {
                                    addr105:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_ || param3)
                                    {
                                       addr114:
                                       _loc7_ = Number(§§pop());
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(!_loc20_)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(!_loc20_)
                                 {
                                    addr156:
                                    §§push(§§pop() * §§pop());
                                    if(_loc21_ || param3)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc20_ && param2))
                                       {
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(_loc6_);
                                    if(!_loc20_)
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
                                                addr171:
                                                §§push(§§pop() * _loc8_.col2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc21_ || param3)
                                             {
                                                addr183:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc11_:* = §§pop();
                                          if(!(_loc20_ && param2))
                                          {
                                             §§push(param2.p2);
                                             if(!(_loc20_ && this))
                                             {
                                                §§push(§§pop().x);
                                                if(_loc21_)
                                                {
                                                   §§push(param3.position);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc20_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc20_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc21_ || param1)
                                                            {
                                                               _loc6_ = §§pop();
                                                               addr248:
                                                               if(_loc21_ || param2)
                                                               {
                                                                  addr237:
                                                                  §§push(param2.p2.y);
                                                                  if(_loc21_)
                                                                  {
                                                                     addr243:
                                                                     §§push(§§pop() - param3.position.y);
                                                                     if(_loc21_)
                                                                     {
                                                                        addr246:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                               }
                                                               _loc8_ = param3.R;
                                                               §§push(_loc6_);
                                                               if(_loc21_)
                                                               {
                                                                  §§push(_loc8_.col1.x);
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc20_ && param2))
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc21_ || this)
                                                                        {
                                                                           addr276:
                                                                           §§push(§§pop() * _loc8_.col1.y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc20_)
                                                                        {
                                                                        }
                                                                        addr284:
                                                                        var _loc12_:* = §§pop();
                                                                        §§push(_loc6_);
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           §§push(_loc8_.col2.x);
                                                                           if(!_loc20_)
                                                                           {
                                                                              addr312:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc8_.col2.y);
                                                                                 }
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                                 §§push(§§pop() - _loc10_);
                                                                                 if(_loc21_ || param2)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc14_:* = §§pop();
                                                                              §§push(_loc13_);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(§§pop() - _loc11_);
                                                                                 if(_loc21_ || this)
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
                                                                                    §§push(this.§0y§);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          §§goto(addr830);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push((_loc9_ = this.§@"2§[_loc17_]).x);
                                                                                          if(!(_loc20_ && param1))
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc21_ || this)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(_loc21_ || param3)
                                                                                                      {
                                                                                                         §§push(_loc9_.y);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr393:
                                                                                                            §§push(§§pop() - _loc11_);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               addr397:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         _loc7_ = §§pop();
                                                                                                      }
                                                                                                      §§push((_loc9_ = this.§6"!§[_loc17_]).x);
                                                                                                      if(!(_loc20_ && this))
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc21_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc20_ && param3))
                                                                                                            {
                                                                                                               §§push(_loc9_.y);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              if(_loc21_ || param1)
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
                                                                                                                                          if(_loc21_ || param2)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                loop47:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr784:
                                                                                                                                                   loop43:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop44:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            addr789:
                                                                                                                                                            loop4:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                               loop5:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  loop6:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           loop7:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              loop8:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    loop9:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop10:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                if(!(_loc20_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc20_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_ && param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr538:
                                                                                                                                                                                                         if(§§pop() < §§pop() - Number.MIN_VALUE)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc20_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                        if(_loc21_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop32:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 addr768:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                    loop21:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                       loop24:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          addr727:
                                                                                                                                                                                                                                          loop42:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             loop17:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                loop18:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop16:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr756:
                                                                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr739:
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               break loop16;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop9;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc16_ = §§pop();
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr756:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         loop14:
                                                                                                                                                                                                                                                         while(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc20_ && param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               loop19:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop16;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop15:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr803);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                                                                      if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop15;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc21_ || param3)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            break loop15;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop47;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                §§goto(addr756);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr755:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                                                                addr652:
                                                                                                                                                                                                                                                                                                addr754:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop5;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr663:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr754:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr755);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr715);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr715:
                                                                                                                                                                                                                                                                                          addr649:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr722);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc20_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          loop12:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop10;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr649);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break loop12;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr657);
                                                                                                                                                                                                                                                                                          addr644:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr708);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr722);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr708:
                                                                                                                                                                                                                                                                                 addr627:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr644);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr765:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop32;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop18;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr702:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr764:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr764:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr765);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr764);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr763:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr764);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr739);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr756);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop8;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc20_ && param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr754);
                                                                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr702);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr637);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                     addr555:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr768);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr756);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop25:
                                                                                                                                                                                                               for(; !(_loc20_ && param2); while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc17_++;
                                                                                                                                                                                                                  if(_loc20_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc21_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr713);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr663);
                                                                                                                                                                                                               })
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc21_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr802:
                                                                                                                                                                                                                  addr803:
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                  §§push(false);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr646);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr460);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr627);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr652);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr538);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr657);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr662);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr800:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr802);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr763);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr800);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr782:
                                                                                                                                          }
                                                                                                                                          §§goto(addr789);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr555);
                                                                                                                           }
                                                                                                                           §§goto(addr754);
                                                                                                                        }
                                                                                                                        §§goto(addr741);
                                                                                                                     }
                                                                                                                     §§goto(addr764);
                                                                                                                  }
                                                                                                                  §§goto(addr727);
                                                                                                               }
                                                                                                               §§goto(addr784);
                                                                                                            }
                                                                                                            §§goto(addr651);
                                                                                                         }
                                                                                                         §§goto(addr782);
                                                                                                      }
                                                                                                      §§goto(addr662);
                                                                                                   }
                                                                                                   §§goto(addr397);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr393);
                                                                                          }
                                                                                          §§goto(addr397);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr822);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr822:
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    §§goto(addr830);
                                                                                 }
                                                                                 addr830:
                                                                                 if(!(_loc20_ && param1))
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    break loop0;
                                                                                 }
                                                                                 param1.fraction = _loc4_;
                                                                                 _loc8_ = param3.R;
                                                                                 _loc9_ = this.§6"!§[_loc16_];
                                                                                 if(!(_loc20_ && this))
                                                                                 {
                                                                                    §§push(param1.normal);
                                                                                    loop50:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       addr958:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(_loc9_.x);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr905:
                                                                                                if(_loc20_ && param3)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr915:
                                                                                                   §§push(_loc8_.col2);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc21_ || param3)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(_loc9_.y);
                                                                                                            if(!(_loc20_ && this))
                                                                                                            {
                                                                                                               addr949:
                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§goto(addr952);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr970:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               addr969:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop50;
                                                                                                            }
                                                                                                            addr971:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr967:
                                                                                                         }
                                                                                                         §§goto(addr969);
                                                                                                      }
                                                                                                      §§goto(addr949);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr966:
                                                                                                   }
                                                                                                   §§goto(addr967);
                                                                                                }
                                                                                                §§goto(addr949);
                                                                                             }
                                                                                          }
                                                                                          addr964:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr966);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr956:
                                                                                 }
                                                                                 else if(true)
                                                                                 {
                                                                                    §§goto(addr973);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.normal);
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc21_ || this)
                                                                                          {
                                                                                             if(!(_loc20_ && param2))
                                                                                             {
                                                                                                §§push(_loc9_.x);
                                                                                                if(_loc21_ || param1)
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§goto(addr905);
                                                                                                   }
                                                                                                   §§goto(addr970);
                                                                                                }
                                                                                                §§goto(addr949);
                                                                                             }
                                                                                             §§goto(addr964);
                                                                                          }
                                                                                          §§goto(addr915);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr958);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr956);
                                                                                    }
                                                                                    §§goto(addr958);
                                                                                    §§goto(addr971);
                                                                                 }
                                                                                 addr952:
                                                                                 §§pop().y = §§pop();
                                                                                 return true;
                                                                              }
                                                                              addr973:
                                                                              return false;
                                                                              §§push(0);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr284);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            _loc7_ = §§pop();
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr248);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc20_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr156);
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr81);
            }
         }
         §§goto(addr94);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§@"2§[0];
         §§push(param2.position.x);
         if(!(_loc12_ && this))
         {
            §§push(_loc3_.col1.x);
            if(_loc13_ || _loc3_)
            {
               §§push(_loc4_.x);
               if(!_loc12_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc13_ || _loc3_)
                  {
                     addr63:
                     §§push(_loc3_.col2.x);
                     if(!_loc12_)
                     {
                        addr68:
                        §§push(§§pop() * _loc4_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc12_)
                  {
                     addr75:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc12_ && this))
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc13_ || param1)
                     {
                        §§push(_loc4_.x);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              addr104:
                              §§push(_loc3_.col2.y);
                              if(_loc13_ || param1)
                              {
                                 addr114:
                                 §§push(§§pop() * _loc4_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc12_ && _loc3_))
                           {
                              addr127:
                              var _loc6_:Number = §§pop();
                              §§push(_loc5_);
                              if(_loc13_)
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
                              while(_loc9_ < this.§0y§)
                              {
                                 _loc4_ = this.§@"2§[_loc9_];
                                 if(!_loc12_)
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr546:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          addr548:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr549:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                addr551:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr552:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr554:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr555:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.y);
                                                            addr557:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr558:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr559:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr560:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr561:
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
                                 §§goto(addr395);
                              }
                              if(!_loc12_)
                              {
                                 §§push(param1.§!8§);
                                 if(!(_loc12_ && this))
                                 {
                                    §§push(_loc5_);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() - b2internal::%I);
                                       if(!(_loc12_ && param2))
                                       {
                                          §§goto(addr590);
                                       }
                                       §§goto(addr637);
                                    }
                                    addr590:
                                    §§pop().x = §§pop();
                                    if(_loc13_)
                                    {
                                       addr634:
                                       §§push(param1.§!8§);
                                       §§push(_loc6_);
                                       if(_loc13_)
                                       {
                                          addr637:
                                          §§push(§§pop() - b2internal::%I);
                                       }
                                       §§pop().y = §§pop();
                                       while(true)
                                       {
                                          §§push(param1.§,f§);
                                          loop57:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr628:
                                             while(true)
                                             {
                                                §§pop().x = §§pop() + b2internal::%I;
                                                continue loop57;
                                             }
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr634);
                              }
                              §§goto(addr631);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr127);
               }
               §§goto(addr68);
            }
            §§goto(addr63);
         }
         §§goto(addr75);
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
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(!(_loc27_ && _loc3_))
         {
            if(this.§0y§ != 2)
            {
               §§push(0);
               if(!(_loc27_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(_loc28_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(_loc28_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§0y§)
               {
                  _loc11_ = this.§@"2§[_loc10_];
                  if(_loc28_ || param2)
                  {
                     _loc12_ = _loc10_ + 1 < this.§0y§ ? this.§@"2§[int(_loc10_ + 1)] : this.§@"2§[0];
                     if(!(_loc27_ && this))
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
                                                      while(!_loc27_)
                                                      {
                                                         §§push(_loc7_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr1097:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr1098:
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
                                                                     addr1081:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        addr1082:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr1083:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr1084:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 addr1085:
                                                                                 while(_loc28_)
                                                                                 {
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr830:
                                                         if(!(_loc28_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         loop80:
                                                         while(true)
                                                         {
                                                            if(!(_loc27_ && param2))
                                                            {
                                                               addr845:
                                                               if(_loc28_ || param2)
                                                               {
                                                                  if(_loc28_)
                                                                  {
                                                                     if(!(_loc27_ && param1))
                                                                     {
                                                                        _loc23_ = §§pop();
                                                                        loop81:
                                                                        while(_loc28_ || param1)
                                                                        {
                                                                           §§push(_loc16_);
                                                                           loop82:
                                                                           while(_loc28_)
                                                                           {
                                                                              continue loop6;
                                                                              addr275:
                                                                              if(!(_loc28_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc17_);
                                                                              if(!_loc27_)
                                                                              {
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr287:
                                                                                    if(_loc28_ || this)
                                                                                    {
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(_loc25_);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   if(_loc28_ || _loc3_)
                                                                                                   {
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(_loc26_);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr318:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  addr321:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        addr326:
                                                                                                                        if(_loc28_ || this)
                                                                                                                        {
                                                                                                                           addr333:
                                                                                                                           if(_loc28_ || this)
                                                                                                                           {
                                                                                                                              addr341:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                 loop125:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc28_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc28_ || param2))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          loop84:
                                                                                                                                          while(!_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   continue loop80;
                                                                                                                                                }
                                                                                                                                                addr692:
                                                                                                                                                if(_loc28_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(0.25);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                      loop86:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc21_);
                                                                                                                                                         loop87:
                                                                                                                                                         while(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop88:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                               loop89:
                                                                                                                                                               while(!(_loc27_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  loop90:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop91:
                                                                                                                                                                     while(_loc28_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        loop92:
                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                           loop93:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                              loop94:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 loop95:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    loop96:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       addr730:
                                                                                                                                                                                       loop97:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          addr731:
                                                                                                                                                                                          loop98:
                                                                                                                                                                                          while(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                loop99:
                                                                                                                                                                                                for(; _loc28_ || this; while(!(_loc27_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc28_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop88;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop96;
                                                                                                                                                                                                })
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                      loop100:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr754:
                                                                                                                                                                                                         loop101:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            loop102:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc27_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     loop103:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                        loop104:
                                                                                                                                                                                                                        while(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                           loop105:
                                                                                                                                                                                                                           for(; !_loc27_; if(_loc27_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           },if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc24_);
                                                                                                                                                                                                                              if(!(_loc27_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc27_ && param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop87;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop100;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr538);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop99;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr511);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr944);
                                                                                                                                                                                                                              addr508:
                                                                                                                                                                                                                           },while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc11_.x);
                                                                                                                                                                                                                              break loop89;
                                                                                                                                                                                                                           },addr976:)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              loop106:
                                                                                                                                                                                                                              while(!(_loc27_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                 loop107:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr782:
                                                                                                                                                                                                                                    while(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       loop109:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc25_ = §§pop();
                                                                                                                                                                                                                                                   while(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                                                                      while(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(0.25);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop106;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr372:
                                                                                                                                                                                                                                                               if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop7;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop105;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop107;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr427:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                                                                                                                        if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr449:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop93;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop95;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr449:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr538:
                                                                                                                                                                                                                                                                              while(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop99;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop107;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop94;
                                                                                                                                                                                                                                                                              addr538:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr449);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop92;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr520:
                                                                                                                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                                                                                                                              if(_loc28_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_ && this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop89;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr538);
                                                                                                                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                                                                                                                    §§goto(addr520);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop101;
                                                                                                                                                                                                                                                                                 addr528:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr541);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr944:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc12_.y);
                                                                                                                                                                                                                                                                                 addr946:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    break loop92;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr944:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr511:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr541);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc11_.y);
                                                                                                                                                                                                                                                                     break loop91;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  addr1016:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     addr1017:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                                                                                                                        break loop81;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr372);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr370:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1098);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(_loc28_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         addr873:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                                                                            break loop125;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   loop72:
                                                                                                                                                                                                                                                   for(; !(_loc27_ && this); §§goto(addr888))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                                                                      while(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         while(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc21_ = §§pop();
                                                                                                                                                                                                                                                            continue loop72;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1097);
                                                                                                                                                                                                                                                         §§goto(addr333);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            while(!(_loc27_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc20_ = §§pop();
                                                                                                                                                                                                                                                                  continue loop72;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop32:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  loop33:
                                                                                                                                                                                                                                                                  while(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc18_ = §§pop();
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        loop35:
                                                                                                                                                                                                                                                                        while(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1015);
                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_ && param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop35;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc27_ && this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              _loc3_ = §§pop();
                                                                                                                                                                                                                                                                              while(_loc28_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                       addr934:
                                                                                                                                                                                                                                                                                       while(_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                                                                          break loop98;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr668:
                                                                                                                                                                                                                                                                                       §§goto(addr1082);
                                                                                                                                                                                                                                                                                       if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr275);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr365);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr326);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop103;
                                                                                                                                                                                                                                                                                                addr267:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop81;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop97;
                                                                                                                                                                                                                                                                                          addr678:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1084);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1085);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        loop30:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                                                                           addr1038:
                                                                                                                                                                                                                                                                           while(_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              continue loop32;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1058:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                                                                              addr1059:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 addr1060:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                    addr1061:
                                                                                                                                                                                                                                                                                    while(_loc28_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       while(_loc28_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                                                                                                                             addr1025:
                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                                                                                                                   break loop80;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1083);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop3;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break loop81;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop4;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr992);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr901:
                                                                                                                                                                                                                                                            addr991:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                         §§goto(addr877);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr877:
                                                                                                                                                                                                                                                      §§goto(addr1017);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr888:
                                                                                                                                                                                                                                                   while(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr898);
                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1007);
                                                                                                                                                                                                                                                   if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop109;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr594:
                                                                                                                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(0.5);
                                                                                                                                                                                                                                                      while(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         while(_loc28_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            while(_loc28_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                                                                     continue loop107;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1060);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr934);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop104;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop102;
                                                                                                                                                                                                                                                         §§goto(addr287);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1096);
                                                                                                                                                                                                                                                      addr612:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr813:
                                                                                                                                                                                                                                                      while(_loc28_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc24_ = §§pop();
                                                                                                                                                                                                                                                         continue loop84;
                                                                                                                                                                                                                                                         §§goto(addr594);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr830);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1069);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                         §§goto(addr813);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr813:
                                                                                                                                                                                                                                                      §§goto(addr992);
                                                                                                                                                                                                                                                      addr826:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1069);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1058);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1057:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr901);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                                                                                                                          §§goto(addr923);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1057);
                                                                                                                                                                                                                                 §§goto(addr773);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr773:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr973:
                                                                                                                                                                                                                              while(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr976);
                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1038);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr938:
                                                                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr941);
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr973);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr773);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr948:
                                                                                                                                                                                                            addr971:
                                                                                                                                                                                                            while(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               break loop82;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr972);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc27_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop90;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr427);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr528);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr754);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(_loc28_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr991);
                                                                                                                                                                                                      addr575:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc27_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr585);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr651);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1059);
                                                                                                                                                                                                addr982:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr754);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr938);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr948);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr944);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr979);
                                                                                                                                                               }
                                                                                                                                                               if(_loc27_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop86;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc27_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr575);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr623);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr982);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      if(_loc27_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                            if(_loc28_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr508);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr541);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr731);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr615);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   break loop84;
                                                                                                                                                   §§goto(addr692);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr785);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr921);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr798);
                                                                                                                                    }
                                                                                                                                    §§goto(addr678);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr826);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr872);
                                                                                                                           }
                                                                                                                           §§goto(addr877);
                                                                                                                        }
                                                                                                                        §§goto(addr666);
                                                                                                                     }
                                                                                                                     §§goto(addr341);
                                                                                                                  }
                                                                                                                  §§goto(addr623);
                                                                                                               }
                                                                                                               §§goto(addr615);
                                                                                                            }
                                                                                                            §§goto(addr449);
                                                                                                         }
                                                                                                         §§goto(addr541);
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                   §§goto(addr640);
                                                                                                }
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                             §§goto(addr730);
                                                                                          }
                                                                                          §§goto(addr782);
                                                                                       }
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    §§goto(addr612);
                                                                                 }
                                                                                 §§goto(addr650);
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                           while(!(_loc27_ && _loc3_))
                                                                           {
                                                                              if(_loc28_ || this)
                                                                              {
                                                                                 §§goto(addr966);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr1061);
                                                                           }
                                                                           §§goto(addr1016);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc28_ || param2)
                                                                           {
                                                                              §§goto(addr1025);
                                                                           }
                                                                           §§goto(addr1045);
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr1081);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr885);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr971);
                                                            §§goto(addr845);
                                                         }
                                                      }
                                                      continue loop9;
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
                     §§goto(addr1009);
                  }
                  §§goto(addr231);
               }
               if(_loc28_ || _loc3_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc28_ || _loc3_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§7!^§ = §§pop();
                  if(!(_loc27_ && param1))
                  {
                     §§push(_loc3_);
                     if(_loc28_)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1235:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1236:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                        addr1234:
                     }
                     loop139:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop140:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr1239:
                           addr1228:
                           addr1229:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc28_ || param2)
                              {
                                 §§push(1);
                                 if(_loc28_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc28_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc27_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc28_)
                                          {
                                             addr1218:
                                             if(_loc27_)
                                             {
                                                continue loop139;
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          if(!(_loc27_ && param1))
                                          {
                                             break;
                                          }
                                          continue loop140;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr1235);
                                    }
                                    §§goto(addr1236);
                                 }
                                 else
                                 {
                                    §§goto(addr1234);
                                 }
                              }
                              §§goto(addr1218);
                              continue loop140;
                           }
                           _loc4_ = §§pop();
                           while(true)
                           {
                              param1.center.Set(_loc3_,_loc4_);
                              addr1179:
                              while(_loc27_ && param1)
                              {
                                 §§goto(addr1239);
                              }
                              §§goto(addr1228);
                           }
                        }
                     }
                     addr1145:
                  }
                  while(true)
                  {
                     §§push(param1);
                     §§push(param2);
                     if(_loc28_ || _loc3_)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().§^s§ = §§pop();
                     if(!(_loc28_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc28_)
                     {
                        break;
                     }
                     §§goto(addr1229);
                  }
                  return;
               }
               §§goto(addr1145);
            }
         }
         loop141:
         while(true)
         {
            §§push(param1.center);
            loop142:
            while(true)
            {
               §§push(0.5);
               loop143:
               while(true)
               {
                  §§push(§§pop() * (this.§@"2§[0].x + this.§@"2§[1].x));
                  while(true)
                  {
                     §§pop().x = §§pop();
                     §§push(param1.center);
                     if(_loc27_)
                     {
                        break;
                     }
                     §§push(0.5);
                     if(!_loc27_)
                     {
                        if(!_loc28_)
                        {
                           continue loop143;
                        }
                        §§push(§§pop() * (this.§@"2§[0].y + this.§@"2§[1].y));
                     }
                     if(!_loc27_)
                     {
                        continue loop141;
                     }
                  }
                  continue loop142;
               }
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1022
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §^x§() : int
      {
         return this.§0y§;
      }
      
      public function §9y§() : Vector.<b2Vec2>
      {
         return this.§@"2§;
      }
      
      public function §8!S§() : Vector.<b2Vec2>
      {
         return this.§6"!§;
      }
      
      public function §8!@§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§@"2§[0].x * param1.x);
         if(_loc7_ || param1)
         {
            §§push(§§pop() + this.§@"2§[0].y * param1.y);
            if(!(_loc6_ && param1))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc6_ && _loc2_))
               {
                  if(_loc7_ || _loc3_)
                  {
                     if(§§pop() >= this.§0y§)
                     {
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        if(!(_loc6_ && this))
                        {
                           addr101:
                           §§push(_loc2_);
                           if(_loc7_ || _loc2_)
                           {
                              break;
                           }
                           loop8:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr189:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && this))
                                 {
                                    if(_loc7_)
                                    {
                                       addr125:
                                       if(_loc7_ || _loc2_)
                                       {
                                          addr133:
                                          §§push(Number(§§pop()));
                                          if(!_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             continue;
                                          }
                                          addr182:
                                          addr182:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             addr183:
                                             addr111:
                                             while(§§pop() > §§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(_loc4_);
                                                while(true)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             _loc4_++;
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             break loop4;
                                             §§goto(addr125);
                                          }
                                          addr177:
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr133);
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr182);
                                 }
                                 §§goto(addr183);
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc6_ && _loc2_)
                           {
                              §§goto(addr189);
                           }
                           §§goto(addr111);
                        }
                     }
                     else
                     {
                        §§push(this.§@"2§[_loc4_].x * param1.x);
                        if(!_loc6_)
                        {
                           §§push(this.§@"2§[_loc4_].y * param1.y);
                           if(_loc7_)
                           {
                              §§goto(addr177);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr187);
               }
               §§goto(addr101);
            }
            return §§pop();
         }
         §§goto(addr52);
      }
      
      public function §#@§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:int = 0;
         §§push(this.§@"2§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§@"2§[0].y * param1.y);
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
            if(_loc6_)
            {
               if(!(_loc7_ && _loc2_))
               {
                  if(§§pop() >= this.§0y§)
                  {
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(_loc6_ || this)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       addr112:
                                       §§push(Number(§§pop()));
                                       if(_loc6_)
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                             }
                                             addr122:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§@"2§[_loc4_].y * param1.y);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr155:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr164:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                               }
                                                            }
                                                            addr163:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc4_++;
                                                                  addr85:
                                                                  while(_loc7_)
                                                                  {
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr83:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr167:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr154:
                                                }
                                                §§goto(addr163);
                                             }
                                             addr143:
                                          }
                                          §§goto(addr83);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr112);
                           }
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr85);
                  }
                  else
                  {
                     §§push(this.§@"2§[_loc4_].x * param1.x);
                  }
                  §§goto(addr143);
               }
               §§goto(addr167);
            }
            §§goto(addr168);
         }
         return this.§@"2§[_loc2_];
      }
      
      private function §5G§() : Boolean
      {
         return false;
      }
      
      private function §@l§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§@"2§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     this.§6"!§[_loc2_] = new b2Vec2();
                     addr74:
                  }
                  _loc2_++;
               }
               continue;
            }
            this.§@"2§[_loc2_] = new b2Vec2();
            §§goto(addr74);
         }
      }
   }
}
