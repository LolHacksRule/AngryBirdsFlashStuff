package §3b§
{
   import §#I§.*;
   import §&H§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §"[§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"[§ = new b2Mat22();
         }
      }
      
      b2internal var §=!S§:b2Vec2;
      
      b2internal var §0!k§:Vector.<b2Vec2>;
      
      b2internal var §0!%§:Vector.<b2Vec2>;
      
      b2internal var §]D§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §3r§ = b2internal::=&;
            while(true)
            {
               this.§=!S§ = new b2Vec2();
               do
               {
                  this.§0!k§ = new Vector.<b2Vec2>();
                  continue loop0;
               }
               while(_loc2_);
               
               return;
               loop5:
               while(!(_loc2_ && _loc2_))
               {
                  this.§=!S§.§+J§();
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  addr39:
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        § !c§ = b2Settings.b2_polygonRadius;
                        continue loop5;
                        §§goto(addr39);
                     }
                     addr91:
                  }
                  if(!(_loc1_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§goto(addr58);
               }
            }
         }
      }
      
      public static function §4g§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§<,§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §!X§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && param1))
         {
            _loc3_.§<F§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §!!@§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || b2PolygonShape)
         {
            _loc3_.§@!w§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §-W§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§ X§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §[`§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§%P§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §-C§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         if(!_loc18_)
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
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(_loc17_ || param1)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(_loc17_ || param1)
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
                           while(true)
                           {
                              _loc11_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc9_.y);
                                 if(!_loc18_)
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr322:
                                       if(!(_loc17_ || param2))
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() * _loc13_);
                                       loop34:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          loop35:
                                          while(_loc17_)
                                          {
                                             §§push(Number(§§pop()));
                                             loop22:
                                             while(true)
                                             {
                                                _loc15_ = §§pop();
                                                addr336:
                                                loop23:
                                                while(_loc17_ || param1)
                                                {
                                                   §§push(0.5);
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         if(_loc17_ || _loc3_)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               §§push(_loc15_);
                                                               while(true)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(_loc17_ || param2)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           addr287:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              addr290:
                                                                              addr248:
                                                                              if(_loc17_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    _loc3_.§2!3§(new b2Vec2(_loc5_,_loc6_));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_.§2!3§(_loc9_);
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                _loc3_.§2!3§(_loc10_);
                                                                                                addr387:
                                                                                                loop31:
                                                                                                while(!(_loc18_ && param1))
                                                                                                {
                                                                                                   do
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      §§push(_loc16_);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc7_);
                                                                                                      }
                                                                                                      §§pop().§9""§(§§pop());
                                                                                                      while(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         _loc8_++;
                                                                                                         if(_loc17_ || b2PolygonShape)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   while(false);
                                                                                                   
                                                                                                   continue loop0;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc10_.x);
                                                                                                   break loop35;
                                                                                                }
                                                                                                addr387:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop28;
                                                                                       }
                                                                                       addr377:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc10_.y);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             addr348:
                                                                                             addr297:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                break loop24;
                                                                                             }
                                                                                             if(!(_loc17_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc18_ && _loc3_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             §§push(_loc14_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                continue loop34;
                                                                                             }
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§push(_loc12_);
                                                                                             while(!_loc18_)
                                                                                             {
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 addr361:
                                                                                 addr386:
                                                                                 while(_loc17_ || b2PolygonShape)
                                                                                 {
                                                                                    _loc14_ = §§pop();
                                                                                    break loop23;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    §§goto(addr387);
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop35;
                                                                        }
                                                                        addr286:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr320);
                                                                  addr227:
                                                                  §§push(_loc16_);
                                                                  if(!(_loc17_ || b2PolygonShape))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop34;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc18_ && param2))
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§goto(addr248);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr286);
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               addr374:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr376:
                                                               while(true)
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  §§goto(addr377);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop22;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc17_ || _loc3_)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc17_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr361);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr386);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr290);
                                                   §§goto(addr336);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr374);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr385);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr387);
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
            if(!_loc18_)
            {
               addr427:
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
         §§goto(addr427);
      }
      
      b2internal static function §&]§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(_loc26_ || b2PolygonShape)
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
               if(!(_loc27_ && param1))
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  addr110:
               }
               _loc4_++;
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr110);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(!(_loc27_ && param2))
         {
            §§push(1);
            if(_loc26_)
            {
               _loc4_ = §§pop();
               if(_loc26_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1102:
               }
               §§goto(addr1105);
            }
            loop2:
            for(; §§pop() <= param3; §§goto(addr1102))
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               if(!_loc27_)
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
                                          while(true)
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
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr851:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                               }
                                                               addr850:
                                                            }
                                                            loop19:
                                                            while(true)
                                                            {
                                                               _loc9_ = §§pop();
                                                               loop20:
                                                               while(_loc26_ || b2PolygonShape)
                                                               {
                                                                  §§push(-§§pop());
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
                                                                              while(_loc26_)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(Number.MAX_VALUE));
                                                                                    while(!_loc27_)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(Number.MAX_VALUE));
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc14_ = §§pop();
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-Number.MAX_VALUE);
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         if(_loc27_ && param1)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§push(-Number.MAX_VALUE);
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc16_ = §§pop();
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  loop36:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc17_ = §§pop();
                                                                                                                     loop37:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop38:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(§§pop() >= param3)
                                                                                                                           {
                                                                                                                              if(!(_loc27_ && b2PolygonShape))
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc26_ || b2PolygonShape)
                                                                                                                                    {
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          if(_loc26_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                while(_loc26_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            loop41:
                                                                                                                                                            while(_loc26_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop42:
                                                                                                                                                                  while(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop25;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        while(!(_loc27_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                           loop44:
                                                                                                                                                                           while(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0.95);
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 loop50:
                                                                                                                                                                                 while(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr498:
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       loop47:
                                                                                                                                                                                       while(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(§§pop() < §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop46:
                                                                                                                                                                                             while(!(_loc27_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                while(_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop86:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop11;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr746:
                                                                                                                                                                                                      addr746:
                                                                                                                                                                                                      loop59:
                                                                                                                                                                                                      while(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop46;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr620:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        break loop50;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop34;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr634:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop64:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_ && param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc22_ = §§pop();
                                                                                                                                                                                                                        loop57:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr696:
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                                                                       §§goto(addr717);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr655:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr695:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr699:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc26_ || param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop57;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              continue loop64;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr610:
                                                                                                                                                                                                                           if(_loc27_ && param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop86;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr793:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr851);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop52:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        addr755:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop52;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr726:
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                          break loop47;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                       addr572:
                                                                                                                                                                                                                                       if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr580:
                                                                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                                                                             continue loop86;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr562:
                                                                                                                                                                                                                                          _loc17_++;
                                                                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop12;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc19_ = §§pop();
                                                                                                                                                                                                                                 §§goto(addr793);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr792:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop9;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                  addr737:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr717:
                                                                                                                                                                                                               §§goto(addr655);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop24;
                                                                                                                                                                                                            addr707:
                                                                                                                                                                                                            addr662:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop3;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                         break loop41;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ || param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop35;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop8;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr654:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               break loop39;
                                                                                                                                                                                                               §§goto(addr654);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr643:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr769);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr562);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                break loop44;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc4_++;
                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr736:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr737);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr498:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr695);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr633:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr634);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr633:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr565);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr483:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr501);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    break loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop9;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr707);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr754);
                                                                                                                                                                        }
                                                                                                                                                                        addr753:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop20;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                           addr752:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr753);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop29;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr726);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr593:
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                           if(_loc27_ && b2PolygonShape)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop2;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr610);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr643);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr740);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop32;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr510);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr748);
                                                                                                                                                               §§goto(addr746);
                                                                                                                                                            }
                                                                                                                                                            continue loop20;
                                                                                                                                                            addr447:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr752);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr498);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr751);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr572);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr736);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr662);
                                                                                                                                                }
                                                                                                                                                addr432:
                                                                                                                                                addr568:
                                                                                                                                             }
                                                                                                                                             §§goto(addr510);
                                                                                                                                          }
                                                                                                                                          §§goto(addr723);
                                                                                                                                       }
                                                                                                                                       §§goto(addr483);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    addr159:
                                                                                                                                    if(_loc27_ && param1)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc27_ && b2PolygonShape)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          addr178:
                                                                                                                                          if(_loc26_ || param3)
                                                                                                                                          {
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   while(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      while(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc27_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  addr262:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  for(; _loc26_ || param3; if(_loc27_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr159);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr473);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr238);
                                                                                                                                                                  })
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                        if(!(_loc26_ || param3))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop2;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc26_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0.5);
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr204);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr778:
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr746);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr760);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr580);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              loop92:
                                                                                                                                                                              while(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param1.R);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().col1);
                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   if(_loc27_ && param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc27_ && param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(param1.R);
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().col2);
                                                                                                                                                                                                      loop94:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         addr351:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            addr352:
                                                                                                                                                                                                            while(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1.R);
                                                                                                                                                                                                               if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop94;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc25_ = §§pop();
                                                                                                                                                                                                   if(!(_loc27_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1078:
                                                                                                                                                                                                      §§push(param1.center);
                                                                                                                                                                                                      §§push(_loc7_.x);
                                                                                                                                                                                                      §§push(_loc25_.col1.x);
                                                                                                                                                                                                      if(_loc26_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1098:
                                                                                                                                                                                                         addr1089:
                                                                                                                                                                                                         addr1099:
                                                                                                                                                                                                         §§push(§§pop() * _loc23_);
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1097:
                                                                                                                                                                                                            §§push(§§pop() + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                         addr1100:
                                                                                                                                                                                                         §§push(param1.center);
                                                                                                                                                                                                         if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_.y);
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc25_.col1);
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc26_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc26_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc25_.col2);
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1033:
                                                                                                                                                                                                                                          §§push(_loc24_);
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1037:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1045:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1053:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      addr1056:
                                                                                                                                                                                                                                                      if(_loc26_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr976:
                                                                                                                                                                                                                                                         param1.§4!;§.x = 0.5 * (_loc15_ - _loc13_);
                                                                                                                                                                                                                                                         addr968:
                                                                                                                                                                                                                                                         addr977:
                                                                                                                                                                                                                                                         addr973:
                                                                                                                                                                                                                                                         addr975:
                                                                                                                                                                                                                                                         addr974:
                                                                                                                                                                                                                                                         addr972:
                                                                                                                                                                                                                                                         §§push(param1.§4!;§);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(0.5);
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr939:
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc26_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr949:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr968);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1101);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1056);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr977);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr976);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr973);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr975);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr974);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr939);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr972);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr949);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr971:
                                                                                                                                                                                                                                                         §§goto(addr971);
                                                                                                                                                                                                                                                         addr1063:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1100);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1078);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1098);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1097);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1037);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1097);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1045);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1089);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1097);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1033);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1045);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1078);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1099);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1053);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1078);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1097);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1063);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr386:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                continue loop92;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             addr385:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr386);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr696);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr633);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr352);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr720);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc26_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr385);
                                                                                                                                                                                 §§push(param1.R);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr682:
                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr620);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr717);
                                                                                                                                                                              addr225:
                                                                                                                                                                              if(_loc27_ && param3)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr236);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr907);
                                                                                                                                                                                    §§push(param1.R);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr502);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop30;
                                                                                                                                                                           addr552:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr791:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr792);
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        §§goto(addr769);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     §§goto(addr262);
                                                                                                                                                                  }
                                                                                                                                                                  addr262:
                                                                                                                                                                  §§goto(addr755);
                                                                                                                                                                  addr527:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr699);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr262);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr447);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1101);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr498);
                                                                                                                                                }
                                                                                                                                                addr191:
                                                                                                                                                §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr196);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr510);
                                                                                                                                                }
                                                                                                                                                §§goto(addr204);
                                                                                                                                             }
                                                                                                                                             §§goto(addr465);
                                                                                                                                          }
                                                                                                                                          §§goto(addr241);
                                                                                                                                       }
                                                                                                                                       §§goto(addr247);
                                                                                                                                    }
                                                                                                                                    §§goto(addr191);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr568);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr552);
                                                                                                                              }
                                                                                                                              §§goto(addr717);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                           }
                                                                                                                           §§goto(addr791);
                                                                                                                        }
                                                                                                                        continue loop36;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr850);
                                                                                                   }
                                                                                                   §§goto(addr851);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(_loc27_ && param2)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr527);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                     if(_loc27_ && param3)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc24_ = §§pop();
                                                                     if(_loc27_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr225);
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
                        }
                     }
                  }
               }
               §§goto(addr633);
            }
         }
         addr1105:
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            super.Set(param1);
            if(!_loc4_)
            {
               §§goto(addr29);
            }
            §§goto(addr33);
         }
         addr29:
         if(param1 is b2PolygonShape)
         {
            addr33:
            _loc2_ = param1 as b2PolygonShape;
            if(!(_loc4_ && _loc3_))
            {
               this.§=!S§.SetV(_loc2_.§=!S§);
            }
            loop0:
            while(true)
            {
               this.§]D§ = _loc2_.§]D§;
               while(true)
               {
                  this.§-k§(this.§]D§);
                  while(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        _loc3_ = 0;
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        addr143:
                        if(_loc3_ < this.§]D§)
                        {
                           this.§0!k§[_loc3_].SetV(_loc2_.§0!k§[_loc3_]);
                           if(!(_loc4_ && _loc2_))
                           {
                              this.§0!%§[_loc3_].SetV(_loc2_.§0!%§[_loc3_]);
                              addr52:
                              if(_loc5_ || this)
                              {
                                 _loc3_++;
                                 if(!_loc4_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr52);
                                    }
                                    §§goto(addr143);
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §<,§(param1:Array, param2:Number = 0) : void
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
         if(!(_loc7_ && param1))
         {
            this.§<F§(_loc3_,param2);
         }
      }
      
      public function §<F§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(_loc8_)
         {
            §§push(param2);
            if(_loc8_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(_loc8_)
                  {
                     addr226:
                     param2 = param1.length;
                     addr227:
                     while(true)
                     {
                     }
                     addr227:
                  }
                  §§goto(addr227);
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop1:
                  while(true)
                  {
                     this.§]D§ = param2;
                     while(true)
                     {
                        this.§-k§(param2);
                        while(!(_loc7_ && _loc3_))
                        {
                           _loc3_ = 0;
                           if(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  if(!(_loc7_ && param1))
                  {
                     break;
                  }
                  §§goto(addr227);
               }
               loop4:
               while(true)
               {
                  §§push(_loc3_);
                  loop5:
                  while(true)
                  {
                     §§push(this.§]D§);
                     loop6:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(0);
                              loop8:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§]D§);
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr300:
                                                         this.§=!S§ = §-C§(this.§0!k§,this.§]D§);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   §§push(_loc3_);
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc7_ && param2)
                                                      {
                                                         continue loop8;
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(_loc3_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(1);
                                                            if(_loc7_ && param1)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop() < this.§]D§)
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc8_ || param2))
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        §§push(1);
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr85:
                                                                        §§push(int(§§pop() + §§pop()));
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr88:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr300);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc8_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§push(int(§§pop()));
                                                               if(_loc8_ || param1)
                                                               {
                                                                  break loop12;
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr85);
                                                         }
                                                         §§goto(addr88);
                                                      }
                                                   }
                                                   continue loop12;
                                                   §§goto(addr300);
                                                }
                                                continue loop5;
                                             }
                                             _loc5_ = §§pop();
                                             if(_loc7_)
                                             {
                                                addr308:
                                                return;
                                             }
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue loop10;
                                             }
                                             _loc6_ = b2Math.§%M§(this.§0!k§[_loc5_],this.§0!k§[_loc4_]);
                                             if(!_loc7_)
                                             {
                                                b2Settings.b2Assert(_loc6_.§%!]§() > Number.MIN_VALUE);
                                                while(true)
                                                {
                                                   this.§0!%§[_loc3_].SetV(b2Math.§66§(_loc6_,1));
                                                   while(!_loc7_)
                                                   {
                                                      loop19:
                                                      while(_loc8_ || param1)
                                                      {
                                                         _loc3_++;
                                                         if(_loc8_)
                                                         {
                                                            addr247:
                                                            if(false)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§0!%§[_loc3_].Normalize();
                                                                  continue loop19;
                                                                  §§goto(addr247);
                                                               }
                                                               addr249:
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr249);
                                             }
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           this.§0!k§[_loc3_].SetV(param1[_loc3_]);
                        }
                        _loc3_++;
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr226);
      }
      
      public function §@!w§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§]D§ = 4;
            loop0:
            while(true)
            {
               this.§-k§(4);
               loop1:
               while(true)
               {
                  this.§0!k§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§0!k§[1].Set(param1,-param2);
                     while(true)
                     {
                        this.§0!k§[2].Set(param1,param2);
                        addr163:
                        while(true)
                        {
                           this.§0!k§[3].Set(-param1,param2);
                           continue loop0;
                        }
                        addr107:
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           continue loop2;
                        }
                        this.§0!%§[2].Set(0,1);
                        loop8:
                        while(!_loc3_)
                        {
                           this.§0!%§[3].Set(-1,0);
                           loop9:
                           while(_loc4_ || this)
                           {
                              while(true)
                              {
                                 this.§=!S§.§+J§();
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc3_ && param2)
                                    {
                                       continue loop8;
                                    }
                                    addr47:
                                    if(!(_loc4_ || param2))
                                    {
                                       while(_loc4_)
                                       {
                                          this.§0!%§[1].Set(1,0);
                                          §§goto(addr100);
                                          §§goto(addr47);
                                       }
                                       continue loop1;
                                       addr125:
                                    }
                                    §§goto(addr54);
                                    continue loop8;
                                 }
                                 continue loop9;
                              }
                              return;
                           }
                           while(_loc4_ || this)
                           {
                              §§goto(addr107);
                              §§goto(addr63);
                           }
                           addr63:
                           continue loop0;
                        }
                        §§goto(addr163);
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function § X§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§]D§ = 4;
            loop0:
            while(true)
            {
               this.§-k§(4);
               loop1:
               while(true)
               {
                  this.§0!k§[0].Set(-param1,-param2);
                  while(true)
                  {
                     this.§0!k§[1].Set(param1,-param2);
                     continue loop1;
                     addr55:
                     while(_loc7_ || param3)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      public function §%P§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§]D§ = 2;
            loop0:
            while(true)
            {
               this.§-k§(2);
               loop1:
               while(true)
               {
                  this.§0!k§[0].SetV(param1);
                  while(!_loc4_)
                  {
                     addr151:
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     this.§0!%§[0] = b2Math.§66§(b2Math.§%M§(param2,param1),1);
                     loop12:
                     while(_loc3_ || this)
                     {
                        this.§0!%§[0].Normalize();
                        while(true)
                        {
                           this.§0!%§[1].x = -this.§0!%§[0].x;
                           while(!_loc4_)
                           {
                              this.§0!%§[1].y = -this.§0!%§[0].y;
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 continue loop12;
                              }
                              addr44:
                              if(!(_loc4_ && param1))
                              {
                                 return;
                              }
                              addr197:
                              while(_loc3_ || this)
                              {
                                 §§goto(addr151);
                                 §§goto(addr44);
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(this.§=!S§);
                                 while(true)
                                 {
                                    §§push(0.5);
                                    if(_loc3_ || param2)
                                    {
                                       §§push(param1.x);
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
                                             }
                                          }
                                          addr133:
                                          if(!(_loc3_ || param2))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_)
                                          {
                                             §§pop().y = §§pop();
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             break loop12;
                                          }
                                          addr186:
                                       }
                                    }
                                    §§goto(addr186);
                                    addr189:
                                    §§push(this.§=!S§);
                                    if(_loc4_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(0.5);
                                    if(_loc3_)
                                    {
                                       §§push(param1.y);
                                       if(_loc3_ || param1)
                                       {
                                          §§push(param2.y);
                                          if(!_loc4_)
                                          {
                                             addr131:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc4_)
                                             {
                                                §§goto(addr133);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr141);
                                 }
                              }
                              addr144:
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr185);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§0!k§[1].SetV(param2);
            §§goto(addr197);
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
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(_loc12_)
         {
            §§push(§§pop() - param1.position.y);
            if(_loc12_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(_loc12_)
         {
            §§push(_loc4_.col1.x);
            if(!_loc11_)
            {
               §§push(§§pop() * §§pop());
               if(_loc12_)
               {
                  §§push(_loc6_);
                  if(_loc12_ || this)
                  {
                     addr78:
                     §§push(§§pop() + §§pop() * _loc4_.col1.y);
                     if(!_loc11_)
                     {
                        addr81:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr78);
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(!_loc11_)
               {
                  §§push(_loc4_.col2.x);
                  if(!_loc11_)
                  {
                     §§goto(addr110);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr110:
               §§push(§§pop() * §§pop());
               if(_loc12_)
               {
                  §§push(_loc6_);
                  if(_loc12_ || param1)
                  {
                     §§push(§§pop() * _loc4_.col2.y);
                  }
               }
               var _loc8_:* = §§pop();
               var _loc9_:int = 0;
               while(true)
               {
                  if(_loc9_ >= this.§]D§)
                  {
                     return true;
                  }
                  _loc3_ = this.§0!k§[_loc9_];
                  if(_loc12_)
                  {
                     §§push(_loc7_);
                     if(!_loc11_)
                     {
                        §§push(_loc3_.x);
                        if(_loc12_)
                        {
                           §§push(§§pop() - §§pop());
                           if(_loc12_ || param1)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc11_)
                              {
                                 addr151:
                                 _loc5_ = §§pop();
                                 if(_loc12_ || this)
                                 {
                                    §§push(_loc8_);
                                    if(_loc12_)
                                    {
                                       addr164:
                                       §§push(§§pop() - _loc3_.y);
                                       if(!(_loc11_ && param1))
                                       {
                                          addr172:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc6_ = §§pop();
                                       addr174:
                                       _loc3_ = this.§0!%§[_loc9_];
                                       if(_loc12_ || _loc3_)
                                       {
                                          §§push(_loc3_.x);
                                          if(_loc12_ || param2)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc11_)
                                                {
                                                   addr202:
                                                   §§push(_loc3_.y);
                                                   if(_loc12_ || this)
                                                   {
                                                      §§push(§§pop() * _loc6_);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc11_ && param2))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc11_)
                                                            {
                                                               addr241:
                                                               §§push(§§pop());
                                                               if(_loc12_)
                                                               {
                                                                  addr244:
                                                                  _loc10_ = §§pop();
                                                                  addr245:
                                                                  §§push(0);
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr202);
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr174);
                              }
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr164);
               }
               return false;
            }
            §§goto(addr78);
         }
         §§goto(addr81);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         §§push(0);
         if(!_loc21_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§%[§);
         if(_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc21_)
         {
            §§push(param2.p1);
            if(!_loc21_)
            {
               §§push(§§pop().x);
               if(_loc20_ || param2)
               {
                  §§push(param3.position);
                  if(_loc20_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc21_ && param3))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc20_)
                        {
                           addr70:
                           §§push(Number(§§pop()));
                           if(!_loc21_)
                           {
                              _loc6_ = §§pop();
                              if(_loc20_ || param2)
                              {
                                 addr83:
                                 §§push(param2.p1.y);
                                 if(!_loc21_)
                                 {
                                    addr86:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc20_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(_loc20_ || param3)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(!_loc21_)
                                 {
                                    addr129:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc21_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc20_)
                                       {
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                    }
                                    var _loc10_:Number = §§pop();
                                    §§push(_loc6_);
                                    if(_loc20_ || param1)
                                    {
                                       §§push(_loc8_.col2.x);
                                       if(!_loc21_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc20_)
                                          {
                                             §§push(_loc7_);
                                             if(_loc20_)
                                             {
                                                addr150:
                                                §§push(§§pop() * _loc8_.col2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc21_ && param2))
                                             {
                                                addr163:
                                                var _loc11_:Number = §§pop();
                                                if(!(_loc21_ && this))
                                                {
                                                   §§push(param2.p2);
                                                   if(_loc20_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc21_ && this))
                                                      {
                                                         §§push(param3.position);
                                                         if(!_loc21_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc20_ || param1)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc21_ && this))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc21_)
                                                                  {
                                                                     addr206:
                                                                     _loc6_ = §§pop();
                                                                     if(_loc20_)
                                                                     {
                                                                        addr211:
                                                                        §§push(param2.p2.y);
                                                                        if(!_loc21_)
                                                                        {
                                                                           addr214:
                                                                           §§push(§§pop() - param3.position.y);
                                                                           if(_loc20_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                     }
                                                                     _loc8_ = param3.R;
                                                                     §§push(_loc6_);
                                                                     if(_loc20_ || this)
                                                                     {
                                                                        §§push(_loc8_.col1.x);
                                                                        if(!(_loc21_ && this))
                                                                        {
                                                                           addr272:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!(_loc21_ && param1))
                                                                              {
                                                                                 §§push(§§pop() * _loc8_.col1.y);
                                                                              }
                                                                           }
                                                                           var _loc12_:Number = §§pop();
                                                                           §§push(_loc6_);
                                                                           if(_loc20_ || param3)
                                                                           {
                                                                              §§push(_loc8_.col2.x);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr290:
                                                                                    §§push(_loc7_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       addr293:
                                                                                       §§push(§§pop() * _loc8_.col2.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc20_ || param2)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc13_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(_loc20_ || this)
                                                                                 {
                                                                                    §§push(§§pop() - _loc10_);
                                                                                    if(_loc20_ || this)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc14_:* = §§pop();
                                                                                 §§push(_loc13_);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() - _loc11_);
                                                                                    if(_loc20_ || param2)
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
                                                                                    if(!(_loc21_ && param1))
                                                                                    {
                                                                                       §§push(this.§]D§);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             §§goto(addr849);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push((_loc9_ = this.§0!k§[_loc17_]).x);
                                                                                             if(!(_loc21_ && this))
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!(_loc21_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc20_ || param3)
                                                                                                      {
                                                                                                      }
                                                                                                      addr407:
                                                                                                      _loc7_ = §§pop();
                                                                                                      §§push((_loc9_ = this.§0!%§[_loc17_]).x);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc20_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc20_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc9_.y);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc21_ && param2))
                                                                                                                        {
                                                                                                                           addr452:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!(_loc21_ && param2))
                                                                                                                           {
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              if(_loc20_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.x);
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    loop47:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr808:
                                                                                                                                       loop42:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.y);
                                                                                                                                          loop43:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             addr811:
                                                                                                                                             loop1:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop2:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   loop3:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr814:
                                                                                                                                                      loop4:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         loop5:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc19_ = §§pop();
                                                                                                                                                            loop6:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               loop7:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     loop8:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop9:
                                                                                                                                                                           for(; !(_loc21_ && param3); while(!(_loc21_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr757);
                                                                                                                                                                              }
                                                                                                                                                                           })
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                              loop10:
                                                                                                                                                                              for(; !_loc21_; if(_loc21_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              },§§goto(addr624))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 loop11:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop12:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr803:
                                                                                                                                                                                          loop13:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                loop14:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   addr657:
                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc20_ || param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc21_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc21_ && param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc20_ || param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr689:
                                                                                                                                                                                                         §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                                                         if(!(_loc21_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                            addr697:
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop21:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                  if(!(_loc21_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                        if(!(_loc21_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc21_ && param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc20_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr531:
                                                                                                                                                                                                                              §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(false);
                                                                                                                                                                                                                                          if(!(_loc21_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop30:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr757:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr770:
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            while(!_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                  addr768:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                                                                            addr764:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(_loc20_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                            if(_loc20_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc16_ = §§pop();
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                                                                         addr770:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         while(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr708:
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                                  §§goto(addr708);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                                                                               addr709:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr704:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr769:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                                                                                                                         §§goto(addr770);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop31:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr726:
                                                                                                                                                                                                                                                loop27:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   addr727:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                      if(!(_loc21_ && param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop47;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ || param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           while(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                              continue loop31;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr767);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              continue loop9;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr748:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr769);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr607);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr768);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr689);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop27;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr704);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc21_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop8;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr764);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr689);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            addr819:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               addr820:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr778:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr818:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr819);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                                                                   break loop10;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr739);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr689);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr626:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr727);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr697);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop29:
                                                                                                                                                                                                                                    while(!(_loc21_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc17_++;
                                                                                                                                                                                                                                          if(!(_loc21_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop21;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr770);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr469);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr607);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr531);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr689);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr689);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop0;
                                                                                                                                                                                                               addr490:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr778);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr819);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr820);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop43;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr768);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr748);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr759);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              return §§pop();
                                                                                                                                                                           }
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop46;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr818);
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
                                                                                                                              §§goto(addr803);
                                                                                                                           }
                                                                                                                           §§goto(addr814);
                                                                                                                        }
                                                                                                                        §§goto(addr808);
                                                                                                                     }
                                                                                                                     §§goto(addr596);
                                                                                                                  }
                                                                                                                  §§goto(addr811);
                                                                                                               }
                                                                                                               §§goto(addr596);
                                                                                                            }
                                                                                                            §§goto(addr808);
                                                                                                         }
                                                                                                         §§goto(addr756);
                                                                                                      }
                                                                                                      §§goto(addr452);
                                                                                                   }
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(!(_loc21_ && param3))
                                                                                                   {
                                                                                                      §§push(_loc9_.y);
                                                                                                      if(!(_loc21_ && param3))
                                                                                                      {
                                                                                                         addr398:
                                                                                                         §§push(§§pop() - _loc11_);
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr407);
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                             §§goto(addr407);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr846);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr846:
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§goto(addr849);
                                                                                    }
                                                                                    addr849:
                                                                                    if(!(_loc21_ && param3))
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       break loop0;
                                                                                    }
                                                                                    param1.fraction = _loc4_;
                                                                                    _loc8_ = param3.R;
                                                                                    _loc9_ = this.§0!%§[_loc16_];
                                                                                    if(!(_loc21_ && param2))
                                                                                    {
                                                                                       §§push(param1.normal);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          addr965:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr981:
                                                                                                §§push(_loc9_.x);
                                                                                                if(!(_loc21_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      addr980:
                                                                                                      addr942:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                      }
                                                                                                      addr942:
                                                                                                      if(!(_loc21_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr949);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.y);
                                                                                                   addr983:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr984:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr981:
                                                                                             }
                                                                                             addr985:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr963:
                                                                                    }
                                                                                    else if(true)
                                                                                    {
                                                                                       §§goto(addr987);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.normal);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          if(!(_loc21_ && param3))
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc9_.x);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc21_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc8_.col2);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc21_ && param2))
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(_loc20_ || param3)
                                                                                                                  {
                                                                                                                     addr941:
                                                                                                                     §§goto(addr942);
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr983);
                                                                                                               }
                                                                                                               §§goto(addr941);
                                                                                                            }
                                                                                                            §§goto(addr980);
                                                                                                         }
                                                                                                         §§goto(addr942);
                                                                                                      }
                                                                                                      §§goto(addr981);
                                                                                                   }
                                                                                                   §§goto(addr984);
                                                                                                }
                                                                                                §§goto(addr941);
                                                                                             }
                                                                                             §§goto(addr942);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr965);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr963);
                                                                                       }
                                                                                       §§goto(addr965);
                                                                                    }
                                                                                    addr949:
                                                                                    §§pop().y = §§pop();
                                                                                    return true;
                                                                                 }
                                                                                 addr987:
                                                                                 return false;
                                                                                 §§push(0);
                                                                              }
                                                                              §§goto(addr293);
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc20_ || this)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc20_ || param3)
                                 {
                                 }
                              }
                              §§goto(addr129);
                           }
                        }
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr70);
            }
         }
         §§goto(addr83);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§0!k§[0];
         §§push(param2.position.x);
         if(_loc13_)
         {
            §§push(_loc3_.col1.x);
            if(_loc13_ || param1)
            {
               §§push(_loc4_.x);
               if(!(_loc12_ && param1))
               {
                  addr77:
                  §§push(§§pop() * §§pop());
                  if(_loc13_ || this)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc13_ || _loc3_)
                     {
                        §§push(§§pop() * _loc4_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc13_)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc12_ && _loc3_))
                     {
                        §§push(_loc4_.x);
                        if(_loc13_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc12_ && this))
                           {
                              addr128:
                              §§push(_loc3_.col2.y);
                              if(_loc13_ || param1)
                              {
                                 addr124:
                                 §§push(§§pop() * _loc4_.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(_loc13_)
                              {
                                 addr132:
                                 var _loc6_:Number = §§pop();
                                 §§push(_loc5_);
                                 if(!(_loc12_ && param2))
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
                                 while(_loc9_ < this.§]D§)
                                 {
                                    _loc4_ = this.§0!k§[_loc9_];
                                    if(!(_loc12_ && param2))
                                    {
                                       §§push(param2.position);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr526:
                                          while(true)
                                          {
                                             §§push(_loc3_.col1);
                                             addr528:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr529:
                                                while(true)
                                                {
                                                   §§push(_loc4_.x);
                                                   addr531:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr532:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         addr534:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr535:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.y);
                                                               addr537:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr538:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr539:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr540:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr541:
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
                                    §§goto(addr193);
                                 }
                                 if(_loc13_ || this)
                                 {
                                    §§push(param1.§>h§);
                                    if(_loc13_)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc12_ && param2))
                                       {
                                          §§push(§§pop() - b2internal:: !c);
                                          if(!(_loc12_ && param2))
                                          {
                                             §§pop().x = §§pop();
                                             if(_loc13_ || param2)
                                             {
                                                addr644:
                                                §§push(param1.§>h§);
                                                §§push(_loc6_);
                                                if(!(_loc12_ && param1))
                                                {
                                                   addr652:
                                                   §§push(§§pop() - b2internal:: !c);
                                                }
                                                §§pop().y = §§pop();
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§^!z§);
                                                loop57:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   addr638:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop() + b2internal:: !c;
                                                      continue loop57;
                                                   }
                                                }
                                                if(_loc12_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                return;
                                                addr633:
                                             }
                                          }
                                       }
                                       §§goto(addr652);
                                    }
                                    §§goto(addr644);
                                 }
                                 §§goto(addr633);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr132);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr77);
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
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         if(_loc28_)
         {
            if(this.§]D§ == 2)
            {
               §§push(param1.center);
               loop133:
               while(true)
               {
                  §§push(0.5);
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(§§pop() * (this.§0!k§[0].x + this.§0!k§[1].x));
                  }
                  while(true)
                  {
                     §§pop().x = §§pop();
                     §§push(0.5);
                     addr108:
                     continue loop133;
                     if(!_loc27_)
                     {
                        §§push(§§pop() * (this.§0!k§[0].y + this.§0!k§[1].y));
                     }
                     if(_loc28_ || this)
                     {
                        §§pop().y = §§pop();
                        while(true)
                        {
                           param1.§&q§ = 0;
                           if(_loc28_ || _loc3_)
                           {
                              param1.§6_§ = 0;
                              if(!(_loc27_ && this))
                              {
                                 break;
                              }
                              continue loop133;
                           }
                        }
                        return;
                        addr131:
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(_loc28_ || this)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(_loc28_ || param1)
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
               if(_loc28_ || _loc3_)
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
               if(_loc28_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               loop0:
               while(_loc10_ < this.§]D§)
               {
                  _loc11_ = this.§0!k§[_loc10_];
                  if(_loc28_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§]D§ ? this.§0!k§[int(_loc10_ + 1)] : this.§0!k§[0];
                     if(_loc28_)
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
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop14:
                                                               while(true)
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
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             while(!(_loc27_ && this))
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc17_ = §§pop();
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(_loc17_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                  }
                                                                                                                  addr1057:
                                                                                                               }
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop32:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc18_ = §§pop();
                                                                                                                     loop33:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        loop34:
                                                                                                                        while(!(_loc27_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc18_);
                                                                                                                           loop35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              loop36:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 loop37:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       loop38:
                                                                                                                                       for(; _loc28_; if(!(_loc27_ && this))
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       })
                                                                                                                                       {
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          loop39:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             loop40:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop41:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   loop42:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc11_.x);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_.x);
                                                                                                                                                            addr711:
                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc27_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      loop44:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop45:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr1018:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop47:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop48:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     loop49:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                        loop50:
                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           loop51:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              addr973:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 loop53:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    addr975:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc11_.y);
                                                                                                                                                                                       loop55:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          loop56:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc12_.y);
                                                                                                                                                                                             loop57:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                loop58:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                   while(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         loop60:
                                                                                                                                                                                                         while(!(_loc27_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            loop61:
                                                                                                                                                                                                            for(; _loc28_; while(_loc28_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr919);
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               §§goto(addr888);
                                                                                                                                                                                                            })
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                                                                               loop62:
                                                                                                                                                                                                               for(; _loc28_; while(!(_loc27_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop37;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr888);
                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                               })
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  loop63:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop64:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                        loop65:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           loop66:
                                                                                                                                                                                                                           while(!(_loc27_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 loop67:
                                                                                                                                                                                                                                 while(_loc28_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc20_ = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       continue loop61;
                                                                                                                                                                                                                                       addr407:
                                                                                                                                                                                                                                       if(!(_loc28_ || param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       _loc10_++;
                                                                                                                                                                                                                                       addr416:
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop122:
                                                                                                                                                                                                                                          while(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop105:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr275:
                                                                                                                                                                                                                                                         if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                                                                               §§goto(addr275);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                                                                            addr903:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc27_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr294:
                                                                                                                                                                                                                                                               if(_loc28_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc28_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop39;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop53;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr546:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    loop99:
                                                                                                                                                                                                                                                                                    while(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                                                                          addr565:
                                                                                                                                                                                                                                                                                          loop91:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                                                                                                                             addr566:
                                                                                                                                                                                                                                                                                             while(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                loop92:
                                                                                                                                                                                                                                                                                                while(_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr803:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      loop93:
                                                                                                                                                                                                                                                                                                      while(_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            addr578:
                                                                                                                                                                                                                                                                                                            loop107:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                              addr605:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr888:
                                                                                                                                                                                                                                                                                                                              addr888:
                                                                                                                                                                                                                                                                                                                              addr624:
                                                                                                                                                                                                                                                                                                                              addr624:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop64;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             addr635:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop105;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr634:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr876:
                                                                                                                                                                                                                                                                                                                                          while(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             break loop105;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             continue loop62;
                                                                                                                                                                                                                                                                                                                                             §§goto(addr876);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr876:
                                                                                                                                                                                                                                                                                                                                          addr919:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr634);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    while(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          while(_loc28_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc28_ || param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break loop107;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(0.25);
                                                                                                                                                                                                                                                                                                                                             if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         break loop99;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      break loop93;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr704:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop45;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                                        break loop91;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr711);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop56;
                                                                                                                                                                                                                                                                                                                                                                  addr704:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break loop91;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop55;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                                                                                                                                                                                addr654:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr733:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop41;
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                      addr752:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         break loop92;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr751:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                break loop93;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop62;
                                                                                                                                                                                                                                                                                                                                          addr862:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                                                                                                                       if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                                                                                                                    addr847:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop67;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop63;
                                                                                                                                                                                                                                                                                                                                 §§goto(addr837);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr837:
                                                                                                                                                                                                                                                                                                                              continue loop61;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                                                                                                                     addr585:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop66;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr812:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  addr813:
                                                                                                                                                                                                                                                                                                                  while(_loc28_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop9;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                                                                                                                            §§goto(addr294);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         addr804:
                                                                                                                                                                                                                                                                                                         while(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr812);
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr803:
                                                                                                                                                                                                                                                                                                      addr574:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr751);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   addr754:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr773:
                                                                                                                                                                                                                                                                                                      while(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr803);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop59;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             break loop99;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr704);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr561:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr565);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr654);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop40;
                                                                                                                                                                                                                                                                           addr554:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr621:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr621:
                                                                                                                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr624);
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop58;
                                                                                                                                                                                                                                                                        §§goto(addr624);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr546:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr804);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr577);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr624);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr369:
                                                                                                                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr380:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr379:
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc27_ && this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc28_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr876);
                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                                                                                                                       addr906:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr407);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr624);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr885:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop20;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr428);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr578);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr813);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr847);
                                                                                                                                                                                                                                                                                 addr830:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr862);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr635);
                                                                                                                                                                                                                                                                           §§goto(addr416);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop122;
                                                                                                                                                                                                                                                                        addr399:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop32;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop47;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop60;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr585);
                                                                                                                                                                                                                                                         §§goto(addr906);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr578);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr634);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr379);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc23_ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr885);
                                                                                                                                                                                                                                                §§goto(addr380);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                                                                          addr265:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr399);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop6;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop13;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop28;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1057);
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
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    continue loop33;
                                                                                                                                 }
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(!(_loc28_ || param2))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(0.25);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              if(_loc28_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc22_);
                                                                                                                                    if(_loc28_ || this)
                                                                                                                                    {
                                                                                                                                       §§goto(addr472);
                                                                                                                                       §§push(_loc22_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr480);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1018);
                                                                                                                              }
                                                                                                                              §§goto(addr733);
                                                                                                                           }
                                                                                                                           §§goto(addr546);
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
                                                                                             }
                                                                                             continue loop17;
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
                     §§goto(addr265);
                  }
                  §§goto(addr241);
               }
               if(_loc28_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!_loc27_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§&q§ = §§pop();
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(_loc3_);
                     loop127:
                     while(true)
                     {
                        §§push(1);
                        loop128:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop129:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop130:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop131:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop132:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr1229:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc27_ && param1))
                                          {
                                             if(!_loc28_)
                                             {
                                                continue loop132;
                                             }
                                             if(!(_loc28_ || this))
                                             {
                                                continue loop131;
                                             }
                                             §§push(1);
                                             if(_loc27_)
                                             {
                                                continue loop128;
                                             }
                                             §§push(_loc5_);
                                             if(!_loc28_)
                                             {
                                                continue loop129;
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(!_loc28_)
                                             {
                                                continue loop130;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc28_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          if(_loc28_ || _loc3_)
                                          {
                                             break;
                                          }
                                          continue loop127;
                                       }
                                       _loc4_ = §§pop();
                                       loop125:
                                       while(true)
                                       {
                                          param1.center.Set(_loc3_,_loc4_);
                                          addr1164:
                                          while(_loc27_)
                                          {
                                             continue loop125;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr1130:
                  }
                  while(true)
                  {
                     §§push(param1);
                     §§push(param2);
                     if(_loc28_ || param2)
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().§6_§ = §§pop();
                     if(!_loc27_)
                     {
                        if(_loc28_ || param2)
                        {
                           break;
                        }
                        §§goto(addr1229);
                     }
                     §§goto(addr1164);
                  }
                  return;
               }
               §§goto(addr1130);
            }
         }
         §§goto(addr131);
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
         var _loc5_:b2Vec2 = b2Math.§0!&§(param3.R,param1);
         §§push(param2);
         if(!(_loc27_ && this))
         {
            §§push(§§pop() - b2Math.§#D§(param1,param3.position));
            if(_loc28_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<Number> = new Vector.<Number>();
            var _loc8_:int = 0;
            var _loc9_:* = -1;
            var _loc10_:* = -1;
            var _loc11_:* = false;
            if(_loc28_ || param3)
            {
               _loc12_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc12_);
               if(!_loc27_)
               {
                  §§push(this.§]D§);
                  if(!_loc27_)
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc28_)
                           {
                              §§push(_loc8_);
                              if(!_loc27_)
                              {
                                 addr391:
                                 var _loc26_:* = §§pop();
                                 if(_loc28_ || param2)
                                 {
                                    §§push(0);
                                    if(!_loc27_)
                                    {
                                       §§push(_loc26_);
                                       if(_loc28_ || param2)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc28_ || param2)
                                             {
                                                addr418:
                                                §§push(0);
                                                if(!_loc27_)
                                                {
                                                   addr435:
                                                   if(_loc28_ || param3)
                                                   {
                                                      addr443:
                                                      switch(§§pop())
                                                      {
                                                         case 1:
                                                            addr323:
                                                            §§push(_loc9_);
                                                            if(!_loc27_)
                                                            {
                                                               addr327:
                                                               §§push(-1);
                                                               if(_loc28_ || param3)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc28_)
                                                                     {
                                                                        addr338:
                                                                        §§push(this.§]D§);
                                                                        if(!(_loc27_ && param2))
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                           if(!(_loc27_ && param3))
                                                                           {
                                                                              addr355:
                                                                              §§push(int(§§pop()));
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§goto(addr443);
                                                                              }
                                                                              addr358:
                                                                              _loc9_ = §§pop();
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr385:
                                                                                 break;
                                                                                 addr361:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr379:
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§goto(addr391);
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§goto(addr385);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr443);
                                                                     }
                                                                     §§goto(addr361);
                                                                  }
                                                                  §§push(this.§]D§);
                                                                  if(_loc28_ || param3)
                                                                  {
                                                                  }
                                                                  addr465:
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc10_);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(§§pop() % this.§]D§);
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  var _loc14_:* = §§pop();
                                                                  §§push(0 - _loc7_[_loc9_]);
                                                                  if(_loc28_ || param1)
                                                                  {
                                                                     §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                                     if(!(_loc27_ && this))
                                                                     {
                                                                        addr515:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc15_:* = §§pop();
                                                                     §§push(0 - _loc7_[_loc10_]);
                                                                     if(_loc28_ || param2)
                                                                     {
                                                                        §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                                        if(_loc28_ || param1)
                                                                        {
                                                                           addr544:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc16_:* = §§pop();
                                                                        §§push(§§findproperty(b2Vec2));
                                                                        §§push(this.§0!k§[_loc9_].x * (1 - _loc15_));
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§push(this.§0!k§[_loc13_].x * _loc15_);
                                                                           if(_loc28_)
                                                                           {
                                                                              addr573:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(this.§0!k§[_loc9_].y * (1 - _loc15_));
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + this.§0!k§[_loc13_].y * _loc15_);
                                                                              }
                                                                           }
                                                                           var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                           §§push(§§findproperty(b2Vec2));
                                                                           §§push(this.§0!k§[_loc10_].x * (1 - _loc16_));
                                                                           if(!(_loc27_ && param2))
                                                                           {
                                                                              §§push(this.§0!k§[_loc14_].x * _loc16_);
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr622:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(this.§0!k§[_loc10_].y * (1 - _loc16_));
                                                                                 if(!(_loc27_ && this))
                                                                                 {
                                                                                    §§push(§§pop() + this.§0!k§[_loc14_].y * _loc16_);
                                                                                 }
                                                                              }
                                                                              var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                              var _loc19_:* = Number(0);
                                                                              var _loc20_:b2Vec2 = new b2Vec2();
                                                                              var _loc21_:b2Vec2 = this.§0!k§[_loc13_];
                                                                              if(!(_loc27_ && this))
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    if(!(_loc27_ && param1))
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       if(!(_loc27_ && param1))
                                                                                       {
                                                                                          addr688:
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             addr987:
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr1003:
                                                                                                      param4.SetV(b2Math.§%!r§(param3,_loc20_));
                                                                                                      §§push(_loc19_);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() % this.§]D§);
                                                                                                                  if(_loc28_ || this)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(_loc27_ && param3)
                                                                                                                        {
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr715:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() == §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           break loop10;
                                                                                                                        }
                                                                                                                        _loc22_ = _loc18_;
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           addr741:
                                                                                                                           §§push(0.5);
                                                                                                                           if(!(_loc27_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc21_.x);
                                                                                                                              if(_loc28_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc17_.x);
                                                                                                                                 if(_loc28_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                    {
                                                                                                                                       addr775:
                                                                                                                                       §§push(_loc22_.y);
                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_.y);
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_.y);
                                                                                                                                                   if(!(_loc27_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr803:
                                                                                                                                                      §§push(_loc17_.y);
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!(_loc27_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr823:
                                                                                                                                                            §§push(_loc22_.x);
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               addr819:
                                                                                                                                                               §§push(§§pop() - _loc17_.x);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                            if(_loc28_ || param3)
                                                                                                                                                            {
                                                                                                                                                               addr831:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc25_ = §§pop();
                                                                                                                                                                     if(!(_loc27_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(_loc28_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr971:
                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                        loop12:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           loop13:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                              §§push(_loc20_.x);
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc25_);
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc17_.x);
                                                                                                                                                                                    if(_loc28_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc21_.x);
                                                                                                                                                                                       if(_loc28_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr940:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc22_.x);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc28_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr951:
                                                                                                                                                                                             §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                                                             addr950:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                §§push(_loc20_.y);
                                                                                                                                                                                                if(!(_loc27_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc25_);
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc17_.y);
                                                                                                                                                                                                      if(_loc28_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc21_.y);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr884:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc28_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc22_.y);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr890:
                                                                                                                                                                                                               §§pop().y = §§pop() + §§pop() / 3;
                                                                                                                                                                                                               addr889:
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr889);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr884);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr889);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr890);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc21_ = _loc22_;
                                                                                                                                                                                             continue loop18;
                                                                                                                                                                                             addr952:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr950);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr940);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr950);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr951);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr952);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc25_);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr823);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr819);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr823);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc27_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr971);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr971);
                                                                                                                                             }
                                                                                                                                             §§goto(addr823);
                                                                                                                                          }
                                                                                                                                          §§goto(addr819);
                                                                                                                                       }
                                                                                                                                       §§goto(addr803);
                                                                                                                                    }
                                                                                                                                    §§goto(addr831);
                                                                                                                                 }
                                                                                                                                 §§goto(addr823);
                                                                                                                              }
                                                                                                                              §§goto(addr775);
                                                                                                                           }
                                                                                                                           §§goto(addr971);
                                                                                                                        }
                                                                                                                        §§goto(addr951);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _loc22_ = this.§0!k§[_loc12_];
                                                                                                                     }
                                                                                                                     §§goto(addr741);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr715);
                                                                                                         }
                                                                                                         addr1010:
                                                                                                         return §§pop();
                                                                                                         addr693:
                                                                                                      }
                                                                                                      §§goto(addr712);
                                                                                                   }
                                                                                                   §§goto(addr1010);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       _loc20_.§9""§(1 / _loc19_);
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr1003);
                                                                                    }
                                                                                    §§goto(addr987);
                                                                                 }
                                                                                 §§goto(addr693);
                                                                              }
                                                                              §§goto(addr688);
                                                                           }
                                                                           §§goto(addr622);
                                                                        }
                                                                        §§goto(addr573);
                                                                     }
                                                                     §§goto(addr544);
                                                                  }
                                                                  §§goto(addr515);
                                                               }
                                                               break loop0;
                                                            }
                                                            §§push(§§pop() - 1);
                                                            if(!(_loc27_ && param2))
                                                            {
                                                               §§goto(addr379);
                                                            }
                                                            §§goto(addr465);
                                                         default:
                                                            break;
                                                         case 0:
                                                            addr273:
                                                            §§push(int(§§pop() % this.§]D§));
                                                            if(_loc11_)
                                                            {
                                                               if(_loc28_)
                                                               {
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                               if(_loc28_ || this)
                                                               {
                                                                  §§goto(addr320);
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                      }
                                                      addr444:
                                                      §§push(_loc9_);
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   §§goto(addr465);
                                                }
                                                addr425:
                                                addr426:
                                                if(§§pop() === _loc26_)
                                                {
                                                   addr427:
                                                   §§push(1);
                                                   if(_loc28_)
                                                   {
                                                      addr430:
                                                   }
                                                }
                                                §§goto(addr435);
                                                §§push(2);
                                             }
                                             §§goto(addr427);
                                          }
                                          §§push(1);
                                          if(_loc28_)
                                          {
                                             §§goto(addr425);
                                          }
                                          §§goto(addr430);
                                       }
                                       §§goto(addr426);
                                    }
                                    §§goto(addr425);
                                 }
                                 §§goto(addr418);
                              }
                              §§goto(addr465);
                              addr270:
                           }
                           §§goto(addr385);
                        }
                        else
                        {
                           _loc7_[_loc12_] = b2Math.§#D§(_loc5_,this.§0!k§[_loc12_]) - _loc6_;
                           if(!_loc27_)
                           {
                              §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                              while(true)
                              {
                                 _loc23_ = §§pop();
                                 addr238:
                                 while(true)
                                 {
                                    §§push(_loc12_);
                                    if(_loc27_ && this)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr125:
                                 §§goto(addr391);
                                 if(_loc27_ && this)
                                 {
                                    continue;
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc27_)
                                    {
                                       §§push(_loc12_);
                                       if(_loc28_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(!_loc27_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!(_loc27_ && this))
                                             {
                                                _loc10_ = §§pop();
                                                if(!(_loc27_ && param3))
                                                {
                                                   if(_loc28_ || param1)
                                                   {
                                                      _loc8_++;
                                                      if(!(_loc27_ && param2))
                                                      {
                                                         if(!_loc27_)
                                                         {
                                                            if(!_loc27_)
                                                            {
                                                               addr82:
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(_loc23_);
                                                                  if(_loc28_)
                                                                  {
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc27_)
                                                                        {
                                                                           addr91:
                                                                           _loc11_ = §§pop();
                                                                           if(_loc28_ || param1)
                                                                           {
                                                                              _loc12_++;
                                                                              if(!_loc27_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr270);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(!(_loc27_ && param3))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc28_ || param2)
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             if(!(_loc27_ && param2))
                                                                                             {
                                                                                                _loc8_++;
                                                                                                while(true)
                                                                                                {
                                                                                                   addr114:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                                addr167:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr238);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr355);
                                                                              addr199:
                                                                           }
                                                                           §§goto(addr114);
                                                                        }
                                                                        addr198:
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                                  §§goto(addr91);
                                                               }
                                                               §§goto(addr323);
                                                               addr82:
                                                            }
                                                            else
                                                            {
                                                               addr197:
                                                               §§push(_loc11_);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr444);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr338);
                                             }
                                             §§goto(addr327);
                                          }
                                          §§goto(addr323);
                                       }
                                       §§goto(addr355);
                                    }
                                    addr276:
                                    _loc24_ = new b2MassData();
                                    if(_loc28_)
                                    {
                                       this.ComputeMass(_loc24_,1);
                                    }
                                    param4.SetV(b2Math.§%!r§(param3,_loc24_.center));
                                    addr311:
                                    if(!(_loc28_ || param3))
                                    {
                                       §§goto(addr311);
                                    }
                                    return _loc24_.§&q§;
                                 }
                                 §§goto(addr82);
                              }
                           }
                        }
                        §§goto(addr338);
                     }
                  }
                  break;
               }
               addr320:
               return §§pop();
            }
            §§push(§§pop() + §§pop());
            if(_loc28_ || param1)
            {
            }
            §§goto(addr323);
         }
         §§goto(addr52);
      }
      
      public function §!G§() : int
      {
         return this.§]D§;
      }
      
      public function §1!l§() : Vector.<b2Vec2>
      {
         return this.§0!k§;
      }
      
      public function §;!7§() : Vector.<b2Vec2>
      {
         return this.§0!%§;
      }
      
      public function §'^§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§0!k§[0].x * param1.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
            if(_loc6_ || _loc2_)
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
            if(_loc6_ || this)
            {
               if(§§pop() >= this.§]D§)
               {
                  if(_loc6_)
                  {
                     addr71:
                     §§push(_loc2_);
                     if(_loc6_ || this)
                     {
                        break;
                     }
                     loop9:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              if(_loc6_)
                              {
                                 addr103:
                                 §§push(Number(§§pop()));
                                 if(!(_loc6_ || this))
                                 {
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 while(!_loc7_)
                                 {
                                    if(_loc7_ && this)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          continue loop9;
                                       }
                                       addr183:
                                    }
                                 }
                                 continue;
                                 addr111:
                              }
                              else
                              {
                                 addr172:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       _loc5_ = §§pop();
                                       break loop4;
                                    }
                                    addr182:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             _loc4_++;
                                             addr93:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   break loop6;
                                                }
                                                §§goto(addr111);
                                             }
                                          }
                                          continue loop0;
                                          addr81:
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                                 addr172:
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr103);
                        }
                        addr181:
                        while(true)
                        {
                           §§goto(addr182);
                        }
                     }
                  }
                  §§goto(addr93);
               }
               else
               {
                  §§push(this.§0!k§[_loc4_].x * param1.x);
                  if(_loc6_ || param1)
                  {
                     §§push(this.§0!k§[_loc4_].y * param1.y);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc7_ && param1))
                        {
                           §§goto(addr172);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr182);
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr71);
         }
         return §§pop();
      }
      
      public function §7#§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§0!k§[0].x * param1.x);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(!_loc7_)
            {
               if(_loc6_ || param1)
               {
                  if(§§pop() >= this.§]D§)
                  {
                     if(!(_loc7_ && this))
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr91:
                           while(true)
                           {
                              _loc4_++;
                           }
                           addr129:
                           _loc3_ = §§pop();
                        }
                     }
                     while(_loc7_ && this)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 addr113:
                                 §§push(Number(§§pop()));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr129);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§0!k§[_loc4_].y * param1.y);
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr168:
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
                                                         addr177:
                                                      }
                                                   }
                                                }
                                                addr167:
                                             }
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   break loop4;
                                                }
                                                if(!(_loc6_ || this))
                                                {
                                                   continue loop4;
                                                }
                                                §§push(_loc4_);
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr188:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          addr141:
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr91);
                     }
                     continue;
                  }
                  §§push(this.§0!k§[_loc4_].x * param1.x);
                  §§goto(addr141);
               }
               §§goto(addr187);
            }
            §§goto(addr188);
         }
         return this.§0!k§[_loc2_];
      }
      
      private function §4!B§() : Boolean
      {
         return false;
      }
      
      private function §-k§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§0!k§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(_loc4_ || _loc2_)
               {
                  break;
               }
               do
               {
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               while(_loc3_ && _loc3_);
               
               continue;
               addr59:
            }
            else
            {
               this.§0!k§[_loc2_] = new b2Vec2();
            }
            while(true)
            {
               this.§0!%§[_loc2_] = new b2Vec2();
               while(true)
               {
                  _loc2_++;
                  §§goto(addr59);
               }
            }
         }
      }
   }
}
