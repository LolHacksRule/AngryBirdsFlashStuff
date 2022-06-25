package §,C§
{
   import §#V§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §-K§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §-K§ = new b2Mat22();
         }
      }
      
      b2internal var §"L§:b2Vec2;
      
      b2internal var §%!]§:Vector.<b2Vec2>;
      
      b2internal var §+[§:Vector.<b2Vec2>;
      
      b2internal var §!!=§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            §"_§ = b2internal::+!N;
            loop1:
            while(true)
            {
               this.§"L§ = new b2Vec2();
               loop2:
               for(; _loc1_; loop4:
               while(_loc1_ || _loc2_)
               {
                  §?!X§ = b2Settings.b2_polygonRadius;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        continue loop4;
                     }
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                     §§goto(addr94);
                     addr61:
                     this.§"L§.§&!K§();
                     if(_loc1_)
                     {
                        return;
                     }
                  }
                  continue loop1;
               })
               {
                  this.§%!]§ = new Vector.<b2Vec2>();
                  while(true)
                  {
                     this.§+[§ = new Vector.<b2Vec2>();
                     continue loop2;
                  }
               }
               continue loop0;
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr61);
            }
         }
      }
      
      public static function §0$§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§?g§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §6h§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§<^§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §+!'§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§#P§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §#!a§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§0!`§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §-V§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && param2))
         {
            _loc3_.§%7§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §@n§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc17_)
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
            if(_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!(_loc18_ && param1))
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
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr344:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr345:
                                                      while(_loc17_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                            addr349:
                                                            while(true)
                                                            {
                                                               §§push(_loc10_.y);
                                                               addr298:
                                                               while(_loc17_)
                                                               {
                                                                  if(!(_loc18_ && param2))
                                                                  {
                                                                     §§push(_loc6_);
                                                                     while(_loc17_ || param1)
                                                                     {
                                                                        if(_loc17_ || b2PolygonShape)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc17_ || b2PolygonShape)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop7;
                                                                     addr308:
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr223:
                                                   if(_loc17_ || b2PolygonShape)
                                                   {
                                                      addr231:
                                                      _loc4_ = Number(§§pop());
                                                      loop31:
                                                      while(_loc17_)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         _loc3_.§'!<§(new b2Vec2(_loc5_,_loc6_));
                                                         loop32:
                                                         while(true)
                                                         {
                                                            _loc3_.§'!<§(_loc9_);
                                                            loop33:
                                                            while(true)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  continue loop32;
                                                               }
                                                               if(!_loc17_)
                                                               {
                                                                  continue loop31;
                                                               }
                                                               if(_loc18_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc17_)
                                                               {
                                                                  _loc3_.§'!<§(_loc10_);
                                                                  loop34:
                                                                  while(!_loc18_)
                                                                  {
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        §§push(_loc16_);
                                                                        if(!(_loc18_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * _loc7_);
                                                                        }
                                                                        §§pop().§%G§(§§pop());
                                                                        loop36:
                                                                        while(!_loc18_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc8_++;
                                                                              if(!_loc18_)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop35;
                                                                                 }
                                                                                 continue loop33;
                                                                              }
                                                                              continue loop36;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop34;
                                                                     }
                                                                  }
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           addr159:
                                                                           if(_loc17_ || _loc3_)
                                                                           {
                                                                              if(!(_loc18_ && b2PolygonShape))
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr175:
                                                                                    §§push(_loc16_);
                                                                                    if(!(_loc18_ && b2PolygonShape))
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr185:
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             if(!(_loc18_ && b2PolygonShape))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   addr212:
                                                                                                   if(!(_loc18_ && param2))
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§goto(addr223);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc17_ || param2))
                                                                                                            {
                                                                                                               addr279:
                                                                                                               while(!(_loc18_ && param1))
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc13_);
                                                                                                                     addr289:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        break loop30;
                                                                                                                     }
                                                                                                                     §§goto(addr185);
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                               addr279:
                                                                                                            }
                                                                                                            §§push(_loc15_);
                                                                                                            while(!_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               while(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(!_loc18_)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        _loc16_ = §§pop();
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     §§goto(addr345);
                                                                                                                     §§goto(addr159);
                                                                                                                  }
                                                                                                                  while(_loc17_)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                                  §§goto(addr212);
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                               §§goto(addr175);
                                                                                                            }
                                                                                                            §§goto(addr308);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr298);
                                                                                                   }
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                                §§goto(addr231);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr287);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 §§goto(addr348);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr291);
                                                                  }
                                                               }
                                                               §§goto(addr349);
                                                            }
                                                            addr339:
                                                            while(true)
                                                            {
                                                               §§push(_loc11_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     §§goto(addr279);
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                         }
                                                      }
                                                      continue loop10;
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
               §§goto(addr126);
            }
            §§goto(addr80);
         }
         if(_loc17_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc17_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(_loc17_ || param1)
            {
               addr397:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc18_ && param1))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr397);
      }
      
      b2internal static function §?s§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         if(!_loc27_)
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(!(_loc27_ && param2))
               {
                  if(_loc26_)
                  {
                     if(!_loc27_)
                     {
                        _loc5_[param3] = _loc5_[0];
                        addr91:
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
                  }
                  continue;
               }
               §§goto(addr91);
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
            if(!(_loc27_ && param3))
            {
               _loc4_ = §§pop();
               if(!_loc27_)
               {
                  addr126:
                  loop97:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1178:
                     while(§§pop() <= param3)
                     {
                        _loc7_ = _loc5_[int(_loc4_ - 1)];
                        if(_loc26_)
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
                                             while(_loc26_)
                                             {
                                                _loc10_ = §§pop();
                                                loop9:
                                                for(; !(_loc27_ && param1); while(_loc26_ || b2PolygonShape)
                                                {
                                                   §§goto(addr869);
                                                   §§push(Number(Number.MAX_VALUE));
                                                   §§goto(addr762);
                                                })
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
                                                                  for(; !(_loc27_ && param2); if(!(_loc26_ || param2))
                                                                  {
                                                                     continue;
                                                                  },§§goto(addr757),§§push(_loc19_))
                                                                  {
                                                                     §§push(_loc10_);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        loop17:
                                                                        while(!_loc27_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop18:
                                                                           for(; !_loc27_; while(true)
                                                                           {
                                                                              if(!(_loc26_ || param2))
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              §§goto(addr780);
                                                                              §§push(_loc19_);
                                                                           })
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
                                                                                          if(!(_loc27_ && b2PolygonShape))
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             loop23:
                                                                                             for(; !_loc27_; if(_loc27_ && b2PolygonShape)
                                                                                             {
                                                                                                continue;
                                                                                             },_loc20_ = §§pop(),§§goto(addr827))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(_loc26_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                   addr316:
                                                                                                   if(_loc27_ && param1)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   _loc23_ = §§pop();
                                                                                                   if(_loc27_ && param1)
                                                                                                   {
                                                                                                      continue loop97;
                                                                                                   }
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      addr333:
                                                                                                      if(!(_loc27_ && param2))
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               addr145:
                                                                                                               if(_loc26_ || param2)
                                                                                                               {
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              addr163:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc26_ || param2)
                                                                                                                              {
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    addr172:
                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                    {
                                                                                                                                       addr179:
                                                                                                                                       if(_loc27_ && b2PolygonShape)
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       if(!(_loc27_ && b2PolygonShape))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                          {
                                                                                                                                             addr201:
                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                             {
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc27_ && param3))
                                                                                                                                                   {
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr229:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     addr238:
                                                                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr247:
                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              _loc24_ = §§pop();
                                                                                                                                                                              if(!(_loc26_ || param2))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop97;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop78:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             addr277:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                addr278:
                                                                                                                                                                                                loop80:
                                                                                                                                                                                                while(_loc26_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                   loop81:
                                                                                                                                                                                                   while(!(_loc27_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr306:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr316);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr614:
                                                                                                                                                                                                                     if(§§pop() > _loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop85:
                                                                                                                                                                                                                        while(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr626:
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr636:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ && b2PolygonShape)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop97;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc17_++;
                                                                                                                                                                                                                                          addr604:
                                                                                                                                                                                                                                          if(_loc26_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr611:
                                                                                                                                                                                                                                             loop38:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop() >= param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_ && param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop97;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc27_ && param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop85;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                      if(_loc26_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                            if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            while(_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop40:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                                                                                                                               addr716:
                                                                                                                                                                                                                                                               loop41:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr651:
                                                                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr671:
                                                                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                                                                              if(_loc26_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr614);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          loop67:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                             addr762:
                                                                                                                                                                                                                                                                                             if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                                                                                                                addr719:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                                                                                                                   addr720:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                                                                                                                            addr722:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr723:
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop67;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                     addr702:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr703:
                                                                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr780:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              addr781:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr783:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * _loc20_);
                                                                                                                                                                                                                                                                                                                           addr784:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                              addr785:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 loop45:
                                                                                                                                                                                                                                                                                                                                 while(_loc26_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc27_ && param3)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr857:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr858:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                                                                                                                                                             break loop78;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr713:
                                                                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop41;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr700:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr731);
                                                                                                                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     loop29:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                                                                                                                                        addr856:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr802:
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop17;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop23;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr869:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                              addr870:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                                                                                                                                                                 addr863:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr864:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr857);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr721:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr700);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr785);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                       break loop85;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr682:
                                                                                                                                                                                                                                                                                    addr850:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    loop42:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr755:
                                                                                                                                                                                                                                                                                       §§push(_loc12_ * _loc20_);
                                                                                                                                                                                                                                                                                       addr757:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr760);
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr753:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr754:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr784);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr702);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr612);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr753);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr757);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr731);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop23;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr682);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr591:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                                                                                                                  loop69:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().col1);
                                                                                                                                                                                                                                                                     loop70:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                        loop71:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop97;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          addr377:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(param1.R);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().col1);
                                                                                                                                                                                                                                                                                          if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                                                                          if(_loc27_ && param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop71;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                          while(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(param1.R);
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop69;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr982:
                                                                                                                                                                                                                                                                                                   addr982:
                                                                                                                                                                                                                                                                                                   _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1156:
                                                                                                                                                                                                                                                                                                      §§push(param1.center);
                                                                                                                                                                                                                                                                                                      §§push(_loc7_.x);
                                                                                                                                                                                                                                                                                                      §§push(_loc25_.col1.x);
                                                                                                                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1173:
                                                                                                                                                                                                                                                                                                         addr1174:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1170:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                         addr1175:
                                                                                                                                                                                                                                                                                                         §§push(param1.center);
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc7_.y);
                                                                                                                                                                                                                                                                                                            if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc25_.col1);
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc25_.col2);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                          if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1112:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1128:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                   if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1137:
                                                                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      addr1029:
                                                                                                                                                                                                                                                                                                                                                      addr1038:
                                                                                                                                                                                                                                                                                                                                                      addr1033:
                                                                                                                                                                                                                                                                                                                                                      addr1039:
                                                                                                                                                                                                                                                                                                                                                      addr1032:
                                                                                                                                                                                                                                                                                                                                                      §§push(param1.§9a§);
                                                                                                                                                                                                                                                                                                                                                      §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1037:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() - _loc13_);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§pop().x = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(param1.§9a§);
                                                                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1011:
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1019:
                                                                                                                                                                                                                                                                                                                                                                                 §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1176:
                                                                                                                                                                                                                                                                                                                                                                                    _loc4_++;
                                                                                                                                                                                                                                                                                                                                                                                    continue loop97;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1038);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1037);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1011);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1033);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1039);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1019);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1032);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1175);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1138:
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1138);
                                                                                                                                                                                                                                                                                                                                                      addr1136:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1170);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1128);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1170);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1136);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1112);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1156);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1156);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1174);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1137);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1156);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1170);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1137);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr713);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr716);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr671);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop70;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr827:
                                                                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr762);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr721);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr604);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop7;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop97;
                                                                                                                                                                                                                                                            §§goto(addr229);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr870);
                                                                                                                                                                                                                                                         addr591:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr864);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr838:
                                                                                                                                                                                                                                                      §§push(Number(_loc5_[_loc17_].x - _loc7_.x));
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                                                                                                                         addr840:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr802);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr839:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr840);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr844);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr843:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr840);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr781);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr839);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr858);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr843);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr602);
                                                                                                                                                                                                                     addr314:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  §§goto(addr201);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0.95);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        break loop81;
                                                                                                                                                                                                                        §§goto(addr172);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr540:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  §§goto(addr306);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr306:
                                                                                                                                                                                                               §§goto(addr651);
                                                                                                                                                                                                               addr532:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            §§goto(addr163);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                                                                            §§goto(addr532);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr755);
                                                                                                                                                                                                         addr529:
                                                                                                                                                                                                         addr298:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc27_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr529);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr528:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr863);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr838);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                     §§goto(addr238);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr671);
                                                                                                                                                                                                                  addr516:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop80;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr505:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr703);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(_loc26_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      break loop80;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr783);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop5;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr719);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  §§goto(addr145);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr723);
                                                                                                                                                                                                               §§goto(addr333);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop14;
                                                                                                                                                                                                            addr556:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1176);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr720);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   §§goto(addr278);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr661);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr850);
                                                                                                                                                                                             §§goto(addr247);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr849:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr982);
                                                                                                                                                                                       §§push(param1.R);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr726);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr371);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr355);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr849);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr494);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr516);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr528);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr591);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr802);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr714);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr626);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr636);
                                                                                                                                                }
                                                                                                                                                §§goto(addr277);
                                                                                                                                             }
                                                                                                                                             §§goto(addr306);
                                                                                                                                          }
                                                                                                                                          §§goto(addr229);
                                                                                                                                       }
                                                                                                                                       §§goto(addr614);
                                                                                                                                    }
                                                                                                                                    §§goto(addr540);
                                                                                                                                 }
                                                                                                                                 §§goto(addr278);
                                                                                                                              }
                                                                                                                              §§goto(addr298);
                                                                                                                           }
                                                                                                                           §§goto(addr755);
                                                                                                                        }
                                                                                                                        §§goto(addr288);
                                                                                                                     }
                                                                                                                     §§goto(addr163);
                                                                                                                  }
                                                                                                                  §§goto(addr817);
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                            §§goto(addr314);
                                                                                                         }
                                                                                                         §§goto(addr229);
                                                                                                      }
                                                                                                      §§goto(addr556);
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop97;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                                if(_loc27_ && b2PolygonShape)
                                                {
                                                   continue;
                                                }
                                                _loc12_ = §§pop();
                                                §§goto(addr893);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr769);
                        continue loop97;
                     }
                  }
               }
               return;
            }
            §§goto(addr1178);
         }
         §§goto(addr126);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc2_ && _loc3_))
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
         if(!(_loc4_ && _loc3_))
         {
            super.Set(param1);
            if(_loc5_)
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
            if(!(_loc4_ && this))
            {
               this.§"L§.SetV(_loc2_.§"L§);
               while(true)
               {
                  this.§!!=§ = _loc2_.§!!=§;
               }
               addr147:
            }
            loop1:
            do
            {
               this.§ !c§(this.§!!=§);
               while(!_loc4_)
               {
                  _loc3_ = 0;
                  if(_loc5_ || param1)
                  {
                     continue loop1;
                  }
               }
               §§goto(addr147);
            }
            while(_loc4_ && this);
            
            loop3:
            while(true)
            {
               if(_loc3_ < this.§!!=§)
               {
                  this.§%!]§[_loc3_].SetV(_loc2_.§%!]§[_loc3_]);
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        this.§+[§[_loc3_].SetV(_loc2_.§+[§[_loc3_]);
                        while(true)
                        {
                           _loc3_++;
                           if(!(_loc5_ || _loc2_))
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                     continue loop3;
                  }
               }
            }
         }
      }
      
      public function §?g§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(_loc8_ || _loc3_)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(!_loc7_)
         {
            this.§<^§(_loc3_,param2);
         }
      }
      
      public function §<^§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push(param2);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr226:
                     while(true)
                     {
                        param2 = §§pop();
                        addr227:
                        while(true)
                        {
                        }
                     }
                  }
                  addr223:
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop2:
                  while(_loc8_)
                  {
                     if(_loc8_)
                     {
                        this.§!!=§ = param2;
                        loop3:
                        while(true)
                        {
                           this.§ !c§(param2);
                           loop4:
                           while(!_loc7_)
                           {
                              while(true)
                              {
                                 _loc3_ = 0;
                                 if(_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§!!=§);
                                    if(_loc8_)
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
                                                loop12:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      while(true)
                                                      {
                                                         addr299:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(this.§!!=§);
                                                               addr302:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr305:
                                                                        this.§"L§ = §@n§(this.§%!]§,this.§!!=§);
                                                                        break loop12;
                                                                     }
                                                                     break loop12;
                                                                  }
                                                                  §§push(_loc3_);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ && _loc3_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(1);
                                                                           if(!(_loc8_ || param1))
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              if(§§pop() < this.§!!=§)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       addr69:
                                                                                       §§push(int(§§pop() + §§pop()));
                                                                                       if(_loc7_ && _loc3_)
                                                                                       {
                                                                                          addr81:
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc7_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc8_ || _loc3_))
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 break loop12;
                                                                              }
                                                                              §§push(0);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr81);
                                                                           }
                                                                           §§goto(addr69);
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr122:
                                                   }
                                                }
                                                §§goto(addr313);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          this.§%!]§[_loc3_].SetV(param1[_loc3_]);
                                       }
                                       _loc3_++;
                                       if(!(_loc8_ || _loc3_))
                                       {
                                          addr313:
                                          return;
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr302);
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr223);
                     }
                  }
                  §§goto(addr227);
               }
            }
            §§goto(addr226);
         }
         §§goto(addr196);
      }
      
      public function §#P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!!=§ = 4;
         }
         while(true)
         {
            this.§ !c§(4);
            while(true)
            {
               this.§%!]§[0].Set(-param1,-param2);
               loop2:
               while(true)
               {
                  this.§%!]§[1].Set(param1,-param2);
                  loop3:
                  while(true)
                  {
                     this.§%!]§[2].Set(param1,param2);
                     loop4:
                     while(true)
                     {
                        this.§%!]§[3].Set(-param1,param2);
                        loop5:
                        while(_loc4_)
                        {
                           this.§+[§[0].Set(0,-1);
                           loop6:
                           while(true)
                           {
                              this.§+[§[1].Set(1,0);
                              loop7:
                              while(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§+[§[2].Set(0,1);
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop7;
                                       addr48:
                                       while(true)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       continue loop6;
                                    }
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                              continue loop5;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
            if(_loc4_ || this)
            {
               return;
            }
         }
      }
      
      public function §0!`§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            this.§!!=§ = 4;
            while(true)
            {
               this.§ !c§(4);
               addr171:
               while(true)
               {
                  this.§%!]§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§%!]§[1].Set(param1,-param2);
                     addr155:
                     while(true)
                     {
                        this.§%!]§[2].Set(param1,param2);
                        addr143:
                        while(_loc8_)
                        {
                        }
                        continue loop2;
                     }
                  }
               }
               addr43:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               if(false)
               {
                  loop10:
                  while(true)
                  {
                     this.§+[§[3].Set(-1,0);
                     while(true)
                     {
                        if(_loc8_ || this)
                        {
                           addr67:
                           if(_loc8_ || param1)
                           {
                              if(_loc8_)
                              {
                                 this.§"L§ = param3;
                                 if(!(_loc8_ || this))
                                 {
                                    continue;
                                 }
                                 if(!(_loc8_ || param1))
                                 {
                                    break loop10;
                                 }
                                 §§goto(addr43);
                              }
                              break;
                           }
                           while(!_loc7_)
                           {
                              this.§+[§[0].Set(0,-1);
                              while(_loc8_)
                              {
                                 this.§+[§[1].Set(1,0);
                                 break loop10;
                              }
                              §§goto(addr143);
                              §§goto(addr67);
                           }
                           §§goto(addr171);
                           addr132:
                        }
                        addr85:
                        while(true)
                        {
                           continue loop10;
                        }
                     }
                     §§goto(addr155);
                  }
                  while(true)
                  {
                     if(!(_loc7_ && this))
                     {
                        this.§+[§[2].Set(0,1);
                        §§goto(addr85);
                     }
                     break;
                     §§goto(addr36);
                  }
                  §§goto(addr110);
               }
               var _loc5_:b2Transform;
               (_loc5_ = new b2Transform()).position = param3;
               if(_loc8_ || this)
               {
                  _loc5_.R.Set(param4);
               }
               var _loc6_:int = 0;
               addr197:
               if(_loc6_ >= this.§!!=§)
               {
                  if(_loc8_)
                  {
                     if(!(_loc8_ || this))
                     {
                        addr240:
                        if(_loc8_ || param2)
                        {
                           _loc6_++;
                           addr216:
                           §§goto(addr197);
                        }
                        this.§+[§[_loc6_] = b2Math.§&!Q§(_loc5_.R,this.§+[§[_loc6_]);
                        §§goto(addr240);
                        addr261:
                     }
                     return;
                  }
                  §§goto(addr216);
               }
               this.§%!]§[_loc6_] = b2Math.§#!<§(_loc5_,this.§%!]§[_loc6_]);
               §§goto(addr261);
            }
         }
         while(true)
         {
            this.§%!]§[3].Set(-param1,param2);
            §§goto(addr132);
         }
      }
      
      public function §%7§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§!!=§ = 2;
            while(true)
            {
               this.§ !c§(2);
            }
            addr221:
         }
         loop1:
         while(true)
         {
            this.§%!]§[0].SetV(param1);
            loop2:
            while(true)
            {
               this.§%!]§[1].SetV(param2);
               continue loop1;
               addr93:
               if(_loc4_ && param2)
               {
                  continue;
               }
               this.§+[§[0].Normalize();
               loop13:
               while(true)
               {
                  this.§+[§[1].x = -this.§+[§[0].x;
                  while(true)
                  {
                     if(!(_loc4_ && param2))
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop13;
                  }
                  loop12:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(_loc4_ && _loc3_)
                        {
                           loop10:
                           while(_loc3_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 addr179:
                                 §§push(this.§"L§);
                                 if(!_loc4_)
                                 {
                                    §§push(0.5);
                                    if(_loc3_)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          §§push(param1.y);
                                          if(_loc3_)
                                          {
                                             if(_loc3_ || param2)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§push(param2.y);
                                                   if(_loc3_ || this)
                                                   {
                                                      addr154:
                                                      §§push(§§pop() * (§§pop() + §§pop()));
                                                      if(_loc3_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         while(true)
                                                         {
                                                            this.§+[§[0] = b2Math.§+?§(b2Math.§9!<§(param2,param1),1);
                                                            continue loop12;
                                                         }
                                                         addr158:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1.x);
                                                            addr165:
                                                            while(true)
                                                            {
                                                               §§push(param2.x);
                                                            }
                                                         }
                                                         addr163:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr168:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr169:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr154);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr179);
                                    }
                                    addr162:
                                 }
                                 §§goto(addr163);
                              }
                              else
                              {
                                 §§goto(addr221);
                              }
                           }
                           continue loop1;
                           addr170:
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr158);
                  }
                  continue loop2;
               }
            }
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
         if(!_loc11_)
         {
            §§push(§§pop() - param1.position.x);
            if(_loc12_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(!_loc11_)
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
            if(_loc12_)
            {
               addr92:
               §§push(§§pop() * §§pop());
               if(!(_loc11_ && param1))
               {
                  §§push(_loc6_);
                  if(_loc12_ || param2)
                  {
                     §§push(§§pop() * _loc4_.col1.y);
                  }
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(_loc12_)
               {
                  §§push(_loc4_.col2.x);
                  if(_loc12_)
                  {
                     §§goto(addr114);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc12_)
                  {
                     addr114:
                     §§goto(addr115);
                  }
                  addr115:
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     §§push(_loc6_);
                     if(_loc12_)
                     {
                        §§push(§§pop() * _loc4_.col2.y);
                     }
                  }
                  var _loc8_:Number = §§pop();
                  var _loc9_:int = 0;
                  while(true)
                  {
                     if(_loc9_ >= this.§!!=§)
                     {
                        return true;
                     }
                     _loc3_ = this.§%!]§[_loc9_];
                     if(_loc12_ || _loc3_)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || this)
                        {
                           §§push(_loc3_.x);
                           if(!_loc11_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc12_ || param1)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc12_ || param2)
                                 {
                                 }
                                 addr187:
                                 addr189:
                                 §§push(§§pop() - _loc3_.y);
                                 if(_loc12_ || param2)
                                 {
                                    addr197:
                                    §§push(Number(§§pop()));
                                 }
                                 _loc6_ = §§pop();
                                 _loc3_ = this.§+[§[_loc9_];
                                 if(_loc11_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(_loc3_.x);
                                 if(_loc12_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc12_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc11_)
                                       {
                                          §§push(_loc3_.y);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() * _loc6_);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      addr261:
                                                      §§push(§§pop());
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         addr269:
                                                         _loc10_ = §§pop();
                                                         addr270:
                                                         §§push(0);
                                                      }
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr261);
                                             }
                                             §§goto(addr269);
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc9_++;
                                          continue;
                                       }
                                       §§goto(addr261);
                                    }
                                 }
                                 §§goto(addr269);
                              }
                              _loc5_ = §§pop();
                              if(_loc12_ || _loc3_)
                              {
                                 §§push(_loc8_);
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    §§goto(addr187);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr189);
                        }
                     }
                     §§goto(addr187);
                  }
                  return false;
               }
               §§goto(addr114);
            }
            §§push(§§pop() + §§pop());
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr92);
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
         §§push(param2.§[n§);
         if(!_loc20_)
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
               if(_loc21_ || param3)
               {
                  §§push(param3.position);
                  if(!(_loc20_ && param1))
                  {
                     §§push(§§pop().x);
                     if(!(_loc20_ && param3))
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc20_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || param1)
                           {
                              addr94:
                              _loc6_ = §§pop();
                              if(!_loc20_)
                              {
                                 addr99:
                                 §§push(param2.p1.y);
                                 if(!_loc20_)
                                 {
                                    addr105:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_)
                                    {
                                       addr108:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                                 addr110:
                                 _loc8_ = param3.R;
                                 §§push(_loc6_);
                                 if(!(_loc20_ && this))
                                 {
                                    §§push(_loc8_.col1.x);
                                    if(!(_loc20_ && param3))
                                    {
                                       addr155:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc20_ && this))
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc20_ && param2))
                                          {
                                             §§push(§§pop() * _loc8_.col1.y);
                                          }
                                       }
                                       var _loc10_:Number = §§pop();
                                       §§push(_loc6_);
                                       if(!_loc20_)
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(_loc21_ || this)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc21_)
                                             {
                                                addr173:
                                                §§push(_loc7_);
                                                if(_loc21_)
                                                {
                                                   addr176:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc21_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc11_:* = §§pop();
                                             if(_loc21_ || this)
                                             {
                                                §§push(param2.p2);
                                                if(_loc21_ || param1)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc20_ && param2))
                                                   {
                                                      §§push(param3.position);
                                                      if(!(_loc20_ && param3))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc21_ || param2)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc21_ || param2)
                                                            {
                                                               addr239:
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc20_ && this))
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr273:
                                                                  if(!(_loc20_ && param2))
                                                                  {
                                                                     addr257:
                                                                     §§push(param2.p2.y);
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr260:
                                                                        §§push(§§pop() - param3.position.y);
                                                                        if(_loc21_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                  }
                                                                  _loc8_ = param3.R;
                                                                  §§push(_loc6_);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(_loc8_.col1.x);
                                                                     if(_loc21_ || this)
                                                                     {
                                                                        addr319:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc21_ || param1)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              §§push(§§pop() * _loc8_.col1.y);
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        §§push(_loc6_);
                                                                        if(_loc21_ || param3)
                                                                        {
                                                                           §§push(_loc8_.col2.x);
                                                                           if(!_loc20_)
                                                                           {
                                                                              addr351:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc8_.col2.y);
                                                                                 }
                                                                              }
                                                                              var _loc13_:Number = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(!(_loc20_ && param3))
                                                                              {
                                                                                 §§push(§§pop() - _loc10_);
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    addr370:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc14_:* = §§pop();
                                                                                 §§push(_loc13_);
                                                                                 if(!(_loc20_ && param3))
                                                                                 {
                                                                                    §§push(§§pop() - _loc11_);
                                                                                    if(!_loc20_)
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
                                                                                       §§push(this.§!!=§);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             addr838:
                                                                                             if(!(_loc20_ && param3))
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                break;
                                                                                             }
                                                                                             _loc8_ = param3.R;
                                                                                             _loc9_ = this.§+[§[_loc16_];
                                                                                             if(!(_loc20_ && param3))
                                                                                             {
                                                                                                §§push(param1.normal);
                                                                                                loop40:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   addr955:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr956:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_.x);
                                                                                                         addr958:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr959:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               addr961:
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
                                                                                                                        addr965:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr966:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              continue loop40;
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
                                                                                             §§goto(addr950);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push((_loc9_ = this.§%!]§[_loc17_]).x);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc21_ || param2)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc9_.y);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               addr428:
                                                                                                               addr429:
                                                                                                               §§push(§§pop() - _loc11_);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr433:
                                                                                                               _loc7_ = §§pop();
                                                                                                               §§push((_loc9_ = this.§+[§[_loc17_]).x);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc21_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc21_ || param2)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc21_ || param3)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       addr491:
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.x);
                                                                                                                                          loop39:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             loop10:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop29:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.y);
                                                                                                                                                   addr801:
                                                                                                                                                   loop38:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      loop13:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         loop28:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            loop11:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               loop14:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  addr806:
                                                                                                                                                                  loop33:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                     addr807:
                                                                                                                                                                     loop32:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        loop18:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr780:
                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                              loop7:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc21_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop32;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 loop8:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                    loop20:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       loop15:
                                                                                                                                                                                       while(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          loop21:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             loop24:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                loop30:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   loop17:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop8;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                      loop34:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                               break loop8;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr739:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr767:
                                                                                                                                                                                                         addr775:
                                                                                                                                                                                                         addr777:
                                                                                                                                                                                                         while(!(_loc21_ || param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc4_ = Number(§§pop() / §§pop());
                                                                                                                                                                                                         addr727:
                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc16_ = §§pop();
                                                                                                                                                                                                         loop3:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc21_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc20_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop33;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr538:
                                                                                                                                                                                                                           §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc20_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(false);
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc20_ && param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc21_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop22:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc21_ || param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop9:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                  while(_loc21_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr706:
                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                     loop4:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(_loc20_ && param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop15;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop6:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    addr720:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc20_ && param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop6;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr675:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr692:
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  break loop3;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               break loop3;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop38;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr675:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr767);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                             continue loop22;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr775);
                                                                                                                                                                                                                                                                                 addr719:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                                                                                                                             if(_loc21_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr675);
                                                                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr811:
                                                                                                                                                                                                                                                                                                   if(§§pop() >= 0)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr778:
                                                                                                                                                                                                                                                                                                      continue loop3;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr692);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr813);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break loop4;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop3;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr651:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr692);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop15;
                                                                                                                                                                                                                                                                           addr710:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr811);
                                                                                                                                                                                                                                                                        §§goto(addr706);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                  addr699:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                     if(_loc21_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc20_ && this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop39;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr767);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break loop9;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr778);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr775);
                                                                                                                                                                                                                                                            addr741:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr651);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr710);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr719);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr813:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                                                                          return false;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr742);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr777);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr720);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr809:
                                                                                                                                                                                                                                       §§goto(addr811);
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr727);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr495);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr707);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr675);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr538);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr699);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr693:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                            §§goto(addr706);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr741);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr809);
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
                                                                                                                                       §§goto(addr720);
                                                                                                                                    }
                                                                                                                                    §§goto(addr693);
                                                                                                                                 }
                                                                                                                                 §§goto(addr807);
                                                                                                                              }
                                                                                                                              §§goto(addr806);
                                                                                                                           }
                                                                                                                           §§goto(addr736);
                                                                                                                        }
                                                                                                                        §§goto(addr739);
                                                                                                                     }
                                                                                                                     §§goto(addr766);
                                                                                                                  }
                                                                                                                  §§goto(addr801);
                                                                                                               }
                                                                                                               §§goto(addr491);
                                                                                                            }
                                                                                                            §§goto(addr433);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr433);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr428);
                                                                                                }
                                                                                                §§goto(addr429);
                                                                                             }
                                                                                             §§goto(addr428);
                                                                                          }
                                                                                       }
                                                                                       addr832:
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          return false;
                                                                                       }
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          param1.fraction = _loc4_;
                                                                                       }
                                                                                       §§goto(addr838);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr832);
                                                                                 §§push(0);
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc20_)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc21_ || this)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               _loc7_ = §§pop();
                                                               §§goto(addr273);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc20_)
                                    {
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr94);
            }
         }
         §§goto(addr99);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§%!]§[0];
         §§push(param2.position.x);
         if(!_loc12_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc12_)
            {
               §§push(_loc4_.x);
               if(_loc13_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc13_)
                  {
                     addr48:
                     §§push(_loc3_.col2.x);
                     if(!_loc12_)
                     {
                        addr56:
                        §§push(§§pop() + §§pop() * _loc4_.y);
                     }
                     §§goto(addr56);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc12_ && param2))
                  {
                     addr65:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc12_ && param1))
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc12_ && _loc3_))
                     {
                        §§push(_loc4_.x);
                        if(_loc13_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              addr99:
                              §§push(_loc3_.col2.y);
                              if(!_loc12_)
                              {
                                 addr107:
                                 §§push(§§pop() + §§pop() * _loc4_.y);
                              }
                              §§goto(addr107);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc13_)
                           {
                              addr112:
                              var _loc6_:Number = §§pop();
                              §§push(_loc5_);
                              if(!_loc12_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc12_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              while(_loc9_ < this.§!!=§)
                              {
                                 _loc4_ = this.§%!]§[_loc9_];
                                 if(!_loc12_)
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr474:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          addr476:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr477:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                addr479:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr480:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr482:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(_loc4_.y);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            addr487:
                                                         }
                                                         addr488:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr489:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr490:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr491:
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
                                 §§goto(addr330);
                              }
                              if(!(_loc12_ && param1))
                              {
                                 §§push(param1.§+!`§);
                                 if(_loc13_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() - b2internal::?!X);
                                       if(_loc13_ || param2)
                                       {
                                          §§pop().x = §§pop();
                                          if(_loc13_)
                                          {
                                             addr574:
                                             §§push(param1.§+!`§);
                                             §§push(_loc6_);
                                             if(!(_loc12_ && param2))
                                             {
                                                addr584:
                                                §§pop().y = §§pop() - b2internal::?!X;
                                                loop58:
                                                while(true)
                                                {
                                                   §§push(param1.§"W§);
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr561:
                                                      addr571:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop() + b2internal::?!X;
                                                         continue loop58;
                                                      }
                                                      §§goto(addr556);
                                                   }
                                                }
                                             }
                                             §§goto(addr584);
                                          }
                                          addr556:
                                          while(true)
                                          {
                                             §§push(param1.§"W§);
                                             if(!(_loc13_ || param2))
                                             {
                                                continue loop59;
                                             }
                                             §§push(_loc8_);
                                             if(!_loc12_)
                                             {
                                                §§pop().y = §§pop() + b2internal::?!X;
                                                if(_loc13_)
                                                {
                                                   break;
                                                }
                                                continue loop58;
                                             }
                                             §§goto(addr561);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr584);
                                 }
                                 §§goto(addr574);
                              }
                              §§goto(addr571);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr112);
               }
               §§goto(addr56);
            }
            §§goto(addr48);
         }
         §§goto(addr65);
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
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(_loc28_)
         {
            if(this.§!!=§ == 2)
            {
               while(true)
               {
                  §§push(param1.center);
                  while(true)
                  {
                     §§push(0.5);
                     if(!(_loc27_ && this))
                     {
                        §§push(§§pop() * (this.§%!]§[0].x + this.§%!]§[1].x));
                     }
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr134:
                        addr106:
                        §§goto(addr69);
                     }
                  }
               }
            }
         }
         else if(false)
         {
            addr69:
            while(true)
            {
               §§push(param1.center);
               if(_loc28_)
               {
                  §§push(0.5);
                  if(!_loc27_)
                  {
                     if(!_loc28_)
                     {
                        continue loop4;
                     }
                     §§push(§§pop() * (this.§%!]§[0].y + this.§%!]§[1].y));
                  }
                  §§pop().y = §§pop();
                  if(_loc28_)
                  {
                     break;
                  }
                  continue loop2;
               }
               continue loop3;
            }
            param1.§]J§ = 0;
            while(true)
            {
               param1.§93§ = 0;
               if(!_loc27_)
               {
                  break;
               }
               §§goto(addr134);
               §§goto(addr106);
            }
            return;
         }
         §§push(0);
         if(_loc28_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc28_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc27_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc28_)
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
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(1 / 3);
         if(_loc28_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:int = 0;
         loop5:
         while(_loc10_ < this.§!!=§)
         {
            _loc11_ = this.§%!]§[_loc10_];
            if(_loc28_)
            {
               _loc12_ = _loc10_ + 1 < this.§!!=§ ? this.§%!]§[int(_loc10_ + 1)] : this.§%!]§[0];
               if(_loc28_ || _loc3_)
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
                                 loop11:
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    loop12:
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
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc15_ = §§pop();
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(_loc12_.y);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  loop22:
                                                                  while(!_loc27_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(!(_loc27_ && param2))
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc13_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc16_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc14_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc15_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop33:
                                                                                                   while(_loc28_)
                                                                                                   {
                                                                                                      _loc17_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         continue loop21;
                                                                                                         addr671:
                                                                                                         if(!(_loc27_ && param1))
                                                                                                         {
                                                                                                            loop123:
                                                                                                            do
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc17_);
                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                        {
                                                                                                                           addr279:
                                                                                                                           if(_loc28_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc27_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              §§push(_loc25_);
                                                                                                                              if(!(_loc27_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          addr307:
                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr314:
                                                                                                                                             if(_loc28_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc26_);
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr334:
                                                                                                                                                         §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                         if(_loc28_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc27_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr350:
                                                                                                                                                               if(_loc28_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr358:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr362:
                                                                                                                                                                        if(_loc28_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr371:
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr378:
                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                                                                    while(_loc28_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc10_++;
                                                                                                                                                                                       if(_loc27_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop123;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc28_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                loop70:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            addr942:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc27_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                               loop72:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                  while(_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc20_ = §§pop();
                                                                                                                                                                                                                        continue loop72;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop23;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop70;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            §§goto(addr378);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                            §§goto(addr1056);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1073);
                                                                                                                                                                                                      §§goto(addr1074);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr988);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr823);
                                                                                                                                                                                          §§goto(addr1038);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr669);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr681);
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr867);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr942);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr872);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr837);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr396);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr593);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr657);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr758);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr358);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr578);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr466);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr560);
                                                                                                                                                }
                                                                                                                                                §§goto(addr569);
                                                                                                                                             }
                                                                                                                                             §§goto(addr749);
                                                                                                                                          }
                                                                                                                                          §§goto(addr505);
                                                                                                                                       }
                                                                                                                                       §§goto(addr570);
                                                                                                                                    }
                                                                                                                                    §§goto(addr611);
                                                                                                                                 }
                                                                                                                                 §§goto(addr639);
                                                                                                                              }
                                                                                                                              §§goto(addr334);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr279);
                                                                                                                              }
                                                                                                                              addr1069:
                                                                                                                           }
                                                                                                                           §§goto(addr1070);
                                                                                                                        }
                                                                                                                        §§goto(addr603);
                                                                                                                     }
                                                                                                                     §§goto(addr642);
                                                                                                                  }
                                                                                                                  §§goto(addr334);
                                                                                                               }
                                                                                                               §§goto(addr358);
                                                                                                            }
                                                                                                            while(false);
                                                                                                            
                                                                                                            continue loop5;
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
                                                                                 while(_loc28_ || this)
                                                                                 {
                                                                                    §§goto(addr859);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                                  continue loop12;
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
               §§goto(addr881);
            }
            §§goto(addr211);
         }
         if(_loc28_)
         {
            §§push(param1);
            §§push(param2);
            if(!(_loc27_ && param2))
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().§]J§ = §§pop();
            if(!_loc27_)
            {
               §§push(_loc3_);
               if(_loc28_)
               {
                  §§push(1);
                  loop132:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr1258:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr1259:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc28_)
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr1262:
                           }
                           addr1263:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr1264:
                              loop140:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc28_ || param2))
                                 {
                                    addr1244:
                                    _loc4_ = §§pop();
                                    while(_loc27_ && _loc3_)
                                    {
                                       continue loop140;
                                       §§goto(addr1244);
                                    }
                                    while(true)
                                    {
                                       param1.center.Set(_loc3_,_loc4_);
                                       do
                                       {
                                          §§push(param1);
                                          §§push(param2);
                                          if(_loc28_ || this)
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().§93§ = §§pop();
                                       }
                                       while(!(_loc28_ || this));
                                       
                                       if(_loc28_)
                                       {
                                          break;
                                       }
                                       §§goto(addr1245);
                                    }
                                 }
                                 else
                                 {
                                    addr1244:
                                    addr1252:
                                 }
                                 continue loop132;
                                 addr1245:
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr1262);
            }
            §§goto(addr1252);
         }
         §§goto(addr1264);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1027
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §5B§() : int
      {
         return this.§!!=§;
      }
      
      public function §^3§() : Vector.<b2Vec2>
      {
         return this.§%!]§;
      }
      
      public function §3a§() : Vector.<b2Vec2>
      {
         return this.§+[§;
      }
      
      public function §#!2§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%!]§[0].x * param1.x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() + this.§%!]§[0].y * param1.y);
            if(_loc6_ || _loc3_)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(_loc6_)
                  {
                     if(§§pop() >= this.§!!=§)
                     {
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                        if(!(_loc7_ && this))
                        {
                           if(_loc6_ || param1)
                           {
                              addr97:
                              §§push(_loc2_);
                              if(!_loc7_)
                              {
                                 break;
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr187:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       if(!_loc7_)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                addr126:
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop3;
                                                   §§goto(addr126);
                                                }
                                                addr127:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§%!]§[_loc4_].y * param1.y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr174:
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                               }
                                                               addr183:
                                                            }
                                                         }
                                                         addr174:
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         break loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                                addr145:
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr183);
                                    }
                                    _loc4_++;
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr127);
                     }
                     else
                     {
                        §§push(this.§%!]§[_loc4_].x * param1.x);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr187);
               }
               §§goto(addr97);
            }
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function §<!,§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%!]§[0].x * param1.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() + this.§%!]§[0].y * param1.y);
            if(_loc6_)
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
            if(_loc6_ || _loc3_)
            {
               if(!_loc7_)
               {
                  if(§§pop() >= this.§!!=§)
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              addr152:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr153:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                           addr151:
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    addr102:
                                    §§push(Number(§§pop()));
                                    if(!(_loc7_ && this))
                                    {
                                       _loc3_ = §§pop();
                                       addr110:
                                    }
                                    else
                                    {
                                       addr145:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr149:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                }
                                             }
                                             addr148:
                                          }
                                          while(§§pop() > §§pop())
                                          {
                                             §§goto(addr151);
                                          }
                                       }
                                       addr145:
                                    }
                                    _loc4_++;
                                    continue loop0;
                                 }
                                 addr144:
                                 while(true)
                                 {
                                    §§goto(addr145);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     §§push(this.§%!]§[_loc4_].x * param1.x);
                     if(_loc6_)
                     {
                        §§push(this.§%!]§[_loc4_].y * param1.y);
                        if(!_loc7_)
                        {
                           §§goto(addr144);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr148);
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr152);
            }
            §§goto(addr153);
         }
         return this.§%!]§[_loc2_];
      }
      
      private function §]!b§() : Boolean
      {
         return false;
      }
      
      private function § !c§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%!]§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(_loc3_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc4_ && param1)
                  {
                     while(true)
                     {
                        this.§+[§[_loc2_] = new b2Vec2();
                        continue loop1;
                     }
                  }
                  _loc2_++;
               }
               continue;
            }
            this.§%!]§[_loc2_] = new b2Vec2();
            §§goto(addr84);
         }
      }
   }
}
