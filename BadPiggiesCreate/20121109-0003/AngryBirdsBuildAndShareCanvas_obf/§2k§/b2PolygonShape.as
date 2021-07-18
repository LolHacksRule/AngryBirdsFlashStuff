package §2k§
{
   import §"J§.*;
   import §%4§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §;!=§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;!=§ = new b2Mat22();
         }
      }
      
      b2internal var §="2§:b2Vec2;
      
      b2internal var §^c§:Vector.<b2Vec2>;
      
      b2internal var §#`§:Vector.<b2Vec2>;
      
      b2internal var §6!-§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               §0!,§ = b2internal::<!D;
               addr117:
               while(true)
               {
                  this.§="2§ = new b2Vec2();
                  addr41:
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr48:
                  }
               }
            }
            addr120:
         }
         while(true)
         {
            this.§^c§ = new Vector.<b2Vec2>();
            loop3:
            while(true)
            {
               this.§#`§ = new Vector.<b2Vec2>();
               while(true)
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue loop3;
                  }
                  if(!_loc2_)
                  {
                     §&!$§ = b2Settings.b2_polygonRadius;
                     continue;
                  }
                  §§goto(addr120);
               }
               §§goto(addr117);
            }
            if(_loc2_ && this)
            {
               continue;
            }
            §§goto(addr41);
         }
         §§goto(addr48);
      }
      
      public static function §"!D§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§?!!§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §9>§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || b2PolygonShape)
         {
            _loc3_.§8B§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §;"8§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§[9§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function § each§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§^!q§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §9H§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§3!7§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §[!4§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc18_ || b2PolygonShape)
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
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!_loc17_)
               {
                  §§push(_loc9_.x);
                  while(true)
                  {
                     §§push(_loc5_);
                     addr377:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr378:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr379:
                           while(true)
                           {
                              _loc11_ = §§pop();
                              addr380:
                              while(true)
                              {
                                 §§push(_loc9_.y);
                                 addr369:
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    addr370:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr371:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr372:
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             addr373:
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                addr359:
                                                while(_loc18_)
                                                {
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr363:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr364:
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                         }
                                                      }
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
                  addr376:
               }
               loop15:
               while(true)
               {
                  §§push(_loc10_.y);
                  loop16:
                  while(true)
                  {
                     §§push(_loc6_);
                     loop17:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop18:
                        while(!_loc17_)
                        {
                           §§push(Number(§§pop()));
                           loop19:
                           while(true)
                           {
                              _loc14_ = §§pop();
                              loop20:
                              while(true)
                              {
                                 §§push(_loc11_);
                                 if(!_loc17_)
                                 {
                                    §§push(_loc14_);
                                    if(_loc18_ || param1)
                                    {
                                       if(_loc17_ && _loc3_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc17_ && param1))
                                       {
                                          if(!_loc17_)
                                          {
                                             §§push(_loc12_);
                                             loop21:
                                             while(_loc18_ || param1)
                                             {
                                                §§push(§§pop() * _loc13_);
                                                loop23:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr337:
                                                   loop22:
                                                   while(_loc18_)
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop24:
                                                         while(_loc18_)
                                                         {
                                                            _loc15_ = §§pop();
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(0.5);
                                                               if(_loc18_ || b2PolygonShape)
                                                               {
                                                                  if(_loc17_ && _loc3_)
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  if(_loc17_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§goto(addr264);
                                                                     §§push(_loc15_);
                                                                  }
                                                                  §§goto(addr372);
                                                                  continue loop24;
                                                               }
                                                               addr271:
                                                               while(!(_loc17_ && _loc3_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  continue loop19;
                                                               }
                                                               continue loop18;
                                                               addr144:
                                                               if(!(_loc18_ || b2PolygonShape))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc17_)
                                                               {
                                                                  _loc8_++;
                                                                  addr153:
                                                                  if(_loc18_ || b2PolygonShape)
                                                                  {
                                                                     addr113:
                                                                     if(!(_loc17_ && param2))
                                                                     {
                                                                        addr120:
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           addr127:
                                                                           if(false)
                                                                           {
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 §§push(_loc16_);
                                                                                 if(_loc18_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc7_);
                                                                                 }
                                                                                 §§pop().§7H§(§§pop());
                                                                                 addr142:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       while(_loc18_)
                                                                                       {
                                                                                          continue loop33;
                                                                                       }
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             _loc3_.§<!n§(_loc9_);
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_.§<!n§(_loc10_);
                                                                                                §§goto(addr158);
                                                                                                §§goto(addr113);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(_loc18_ || param2)
                                                                                             {
                                                                                                _loc3_.§<!n§(new b2Vec2(_loc5_,_loc6_));
                                                                                                continue loop30;
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                             addr235:
                                                                                          }
                                                                                       }
                                                                                       addr158:
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§goto(addr144);
                                                                                    §§goto(addr369);
                                                                                    §§goto(addr153);
                                                                                 }
                                                                                 continue loop25;
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc18_ || param2)
                                                                           {
                                                                              addr189:
                                                                              if(_loc17_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr196:
                                                                              §§push(_loc16_);
                                                                              if(!(_loc17_ && param1))
                                                                              {
                                                                                 if(!(_loc18_ || param1))
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc17_ && param2))
                                                                                 {
                                                                                    addr231:
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    §§goto(addr380);
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 §§goto(addr235);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             break loop28;
                                                                                          }
                                                                                          §§goto(addr271);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr196);
                                                                                 }
                                                                                 §§goto(addr362);
                                                                                 addr264:
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§goto(addr231);
                                                                           §§goto(addr120);
                                                                        }
                                                                        continue loop19;
                                                                        addr296:
                                                                     }
                                                                     §§goto(addr165);
                                                                  }
                                                                  §§goto(addr142);
                                                               }
                                                               §§goto(addr380);
                                                            }
                                                            continue loop22;
                                                         }
                                                         continue loop16;
                                                         addr342:
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr371);
                                                }
                                             }
                                             §§goto(addr377);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr337);
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr342);
                              }
                              continue loop17;
                           }
                        }
                        §§goto(addr363);
                     }
                  }
               }
            }
            §§goto(addr86);
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
            if(!_loc17_)
            {
               addr403:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc18_ || param1)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr403);
      }
      
      b2internal static function §=d§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc16_:Number = NaN;
         var _loc17_:* = 0;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
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
               if(_loc27_)
               {
                  if(_loc27_ || param2)
                  {
                     if(!_loc26_)
                     {
                        _loc5_[param3] = _loc5_[0];
                        addr97:
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
               §§goto(addr97);
            }
            else
            {
               _loc5_[_loc4_] = param2[_loc4_];
            }
            §§goto(addr111);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(_loc27_)
         {
            §§push(1);
            if(!(_loc26_ && param2))
            {
               _loc4_ = §§pop();
               if(!_loc26_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1178:
               }
               §§goto(addr1181);
            }
            loop2:
            for(; §§pop() <= param3; §§goto(addr1178))
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               if(!_loc26_)
               {
                  §§push(_loc5_[_loc4_].x - _loc7_.x);
                  while(true)
                  {
                     §§push(Number(§§pop()));
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
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop14:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop15:
                                                      while(!(_loc26_ && param2))
                                                      {
                                                         §§push(_loc9_);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               while(_loc27_)
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
                                                                              while(true)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 loop24:
                                                                                 while(_loc27_ || param1)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          _loc12_ = §§pop();
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
                                                                                                   for(; _loc27_; if(!(_loc27_ || param3))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },_loc22_ = §§pop(),§§goto(addr765))
                                                                                                   {
                                                                                                      _loc14_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(-Number.MAX_VALUE);
                                                                                                         addr857:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr858:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc15_ = §§pop();
                                                                                                               if(_loc27_ || param2)
                                                                                                               {
                                                                                                                  if(!(_loc27_ || param2))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(-Number.MAX_VALUE);
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         addr645:
                                                                                                         if(_loc26_ && b2PolygonShape)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr653:
                                                                                                         §§push(_loc22_);
                                                                                                         if(_loc27_ || param1)
                                                                                                         {
                                                                                                            addr661:
                                                                                                            _loc16_ = §§pop();
                                                                                                            addr608:
                                                                                                            _loc17_++;
                                                                                                            loop39:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc17_);
                                                                                                               if(_loc27_ || param3)
                                                                                                               {
                                                                                                                  if(§§pop() >= param3)
                                                                                                                  {
                                                                                                                     loop40:
                                                                                                                     while(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           loop42:
                                                                                                                           while(!(_loc26_ && param2))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              while(!(_loc26_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc16_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       loop45:
                                                                                                                                       while(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          while(!(_loc26_ && param3))
                                                                                                                                          {
                                                                                                                                             if(_loc27_ || b2PolygonShape)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(!(_loc26_ && b2PolygonShape))
                                                                                                                                                {
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            continue loop14;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         loop49:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc27_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  _loc18_ = §§pop();
                                                                                                                                                                  while(_loc27_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0.95);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 loop52:
                                                                                                                                                                                 while(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                loop55:
                                                                                                                                                                                                while(_loc27_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      while(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                                                                         while(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop29;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(param1.R);
                                                                                                                                                                                                               loop58:
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
                                                                                                                                                                                                                        while(!_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(param1.R);
                                                                                                                                                                                                                                 continue loop58;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr454:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr662);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                      addr588:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr725:
                                                                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr733:
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop24;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr685);
                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr770:
                                                                                                                                                                                                      §§push(§§pop() * _loc19_);
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr773:
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         break loop52;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      §§goto(addr725);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_ && b2PolygonShape)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop55;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc27_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc23_ = §§pop();
                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr149);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr224:
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr229:
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc24_ = §§pop();
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc27_ || param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop5;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr268);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1.R);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr963);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr701:
                                                                                                                                                                                                                                       if(!(_loc26_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr709);
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr850);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr638:
                                                                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr645);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr832);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr404);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr857);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr665);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr588);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr858);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop39;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr836:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr671);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr434);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr661);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr331);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr620);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr710);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop49;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr811);
                                                                                                                                                                                             addr720:
                                                                                                                                                                                             addr765:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1025);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr309:
                                                                                                                                                                                       while(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc26_ && b2PolygonShape)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr331);
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr749:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr750);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr776);
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr775);
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr554:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr770);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr773);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        if(_loc26_ && b2PolygonShape)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc27_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr191:
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc26_ && b2PolygonShape)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop45;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr207);
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           while(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr309);
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              §§goto(addr191);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr554);
                                                                                                                                                                           addr306:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr751);
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr701);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr663);
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr677);
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               addr755:
                                                                                                                                                               §§goto(addr756);
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                            if(_loc26_ && b2PolygonShape)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr224);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr229);
                                                                                                                                                         }
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr724);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr683);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      if(_loc27_ || b2PolygonShape)
                                                                                                                                                      {
                                                                                                                                                         continue loop41;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr627);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                continue loop30;
                                                                                                                                             }
                                                                                                                                             §§goto(addr670);
                                                                                                                                          }
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr638);
                                                                                                                                          }
                                                                                                                                          §§goto(addr608);
                                                                                                                                       }
                                                                                                                                       §§goto(addr755);
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc26_ && b2PolygonShape)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr306);
                                                                                                                                       §§push(_loc15_);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr733);
                                                                                                                              }
                                                                                                                              §§goto(addr653);
                                                                                                                           }
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr768);
                                                                                                                        §§goto(addr627);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                  }
                                                                                                                  §§goto(addr823);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr662:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc17_ = §§pop();
                                                                                                               §§goto(addr836);
                                                                                                               §§goto(addr455);
                                                                                                            }
                                                                                                            addr455:
                                                                                                         }
                                                                                                         §§goto(addr720);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(!(_loc27_ || param2))
                                       {
                                          continue;
                                       }
                                       _loc21_ = §§pop();
                                       if(!(_loc27_ || param2))
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr748);
                                       §§push(_loc11_);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr454);
            }
         }
         addr1181:
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc3_ && _loc2_))
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
            if(_loc4_ || this)
            {
               if(param1 is b2PolygonShape)
               {
                  addr42:
                  _loc2_ = param1 as b2PolygonShape;
                  if(!(_loc5_ && param1))
                  {
                     this.§="2§.SetV(_loc2_.§="2§);
                  }
                  do
                  {
                     this.§6!-§ = _loc2_.§6!-§;
                     do
                     {
                        this.§2a§(this.§6!-§);
                        do
                        {
                           _loc3_ = 0;
                        }
                        while(_loc5_);
                        
                     }
                     while(_loc5_);
                     
                  }
                  while(_loc5_ && _loc3_);
                  
                  loop3:
                  while(true)
                  {
                     if(_loc3_ < this.§6!-§)
                     {
                        this.§^c§[_loc3_].SetV(_loc2_.§^c§[_loc3_]);
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              this.§#`§[_loc3_].SetV(_loc2_.§#`§[_loc3_]);
                              if(_loc5_ && this)
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 _loc3_++;
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function §?!!§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(!_loc8_)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(!_loc8_)
         {
            this.§8B§(_loc3_,param2);
         }
      }
      
      public function §8B§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(!_loc7_)
         {
            §§push(param2);
            if(_loc8_ || param1)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr261:
                     while(true)
                     {
                        param2 = §§pop();
                        addr262:
                        while(true)
                        {
                        }
                     }
                     addr221:
                     if(_loc7_ && param1)
                     {
                        continue;
                     }
                     _loc3_ = 0;
                     addr228:
                     if(_loc8_)
                     {
                        addr207:
                        if(_loc7_ && _loc3_)
                        {
                           loop6:
                           while(true)
                           {
                              this.§2a§(param2);
                              addr219:
                              addr240:
                              while(_loc8_)
                              {
                                 §§goto(addr221);
                                 §§goto(addr228);
                              }
                              while(!(_loc7_ && param1))
                              {
                                 while(true)
                                 {
                                    this.§6!-§ = param2;
                                    continue loop6;
                                 }
                              }
                              §§goto(addr262);
                           }
                        }
                        loop8:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop9:
                           while(true)
                           {
                              §§push(this.§6!-§);
                              loop10:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop12:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          loop13:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(this.§6!-§);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               this.§="2§ = §[!4§(this.§^c§,this.§6!-§);
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         §§push(_loc3_);
                                                         do
                                                         {
                                                            §§push(int(§§pop()));
                                                            do
                                                            {
                                                               _loc4_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        if(_loc7_ && param2)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(1);
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           if(§§pop() < this.§6!-§)
                                                                           {
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 if(!(_loc8_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc7_ && param2)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!(_loc8_ || _loc3_))
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(!(_loc8_ || param2))
                                                                                 {
                                                                                    _loc3_++;
                                                                                    continue loop8;
                                                                                    addr201:
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc7_ && param1)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(_loc7_ && _loc3_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    addr114:
                                                                                    §§push(int(§§pop() + §§pop()));
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(int(§§pop()));
                                                                                    if(_loc7_ && param1)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                                 _loc5_ = §§pop();
                                                                                 if(!(_loc8_ || this))
                                                                                 {
                                                                                    break loop17;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    break loop15;
                                                                                 }
                                                                                 _loc6_ = b2Math.§ !r§(this.§^c§[_loc5_],this.§^c§[_loc4_]);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    b2Settings.b2Assert(_loc6_.§`2§() > Number.MIN_VALUE);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§#`§[_loc3_].SetV(b2Math.§>O§(_loc6_,1));
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       addr289:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§#`§[_loc3_].Normalize();
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break loop17;
                                                                           }
                                                                           §§push(0);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        §§goto(addr114);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                            while(_loc7_ && param1);
                                                            
                                                         }
                                                         while(_loc7_);
                                                         
                                                         if(!(_loc8_ || this))
                                                         {
                                                            break loop16;
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      return;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§^c§[_loc3_].SetV(param1[_loc3_]);
                                 }
                                 §§goto(addr201);
                              }
                           }
                        }
                     }
                     §§goto(addr219);
                  }
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  §§goto(addr240);
                  §§goto(addr262);
               }
            }
            §§goto(addr261);
         }
         §§goto(addr247);
      }
      
      public function §[9§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§6!-§ = 4;
            while(true)
            {
               this.§2a§(4);
               loop1:
               while(true)
               {
                  this.§^c§[0].Set(-param1,-param2);
                  addr158:
                  while(true)
                  {
                     this.§^c§[1].Set(param1,-param2);
                     addr137:
                     while(true)
                     {
                        this.§^c§[2].Set(param1,param2);
                        while(true)
                        {
                           this.§^c§[3].Set(-param1,param2);
                           addr116:
                           while(_loc3_)
                           {
                           }
                           continue loop1;
                           addr45:
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
            addr167:
         }
         while(true)
         {
            this.§#`§[0].Set(0,-1);
            loop7:
            while(!_loc4_)
            {
               this.§#`§[1].Set(1,0);
               loop8:
               while(true)
               {
                  this.§#`§[2].Set(0,1);
                  loop9:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§#`§[3].Set(-1,0);
                        for(; !_loc4_; this.§="2§.§?b§(),if(!_loc4_)
                        {
                           continue loop9;
                        })
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr137);
                     }
                     break;
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        continue loop8;
                     }
                     if(_loc4_)
                     {
                        continue loop7;
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr158);
               }
            }
            §§goto(addr116);
         }
      }
      
      public function §^!q§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§6!-§ = 4;
            while(true)
            {
               this.§2a§(4);
               loop1:
               while(true)
               {
                  this.§^c§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§^c§[1].Set(param1,-param2);
                     addr150:
                     while(true)
                     {
                        this.§^c§[2].Set(param1,param2);
                        continue loop1;
                        addr63:
                        if(!(_loc7_ && param1))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§^c§[3].Set(-param1,param2);
            §§goto(addr114);
         }
      }
      
      public function §3!7§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§6!-§ = 2;
            loop0:
            while(true)
            {
               this.§2a§(2);
               loop1:
               while(true)
               {
                  this.§^c§[0].SetV(param1);
                  addr195:
                  while(!_loc4_)
                  {
                     this.§^c§[1].SetV(param2);
                     while(true)
                     {
                        §§push(this.§="2§);
                        addr162:
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(param1.x);
                              if(_loc3_)
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                 }
                                 addr176:
                              }
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                              addr177:
                           }
                           addr178:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop4;
                           }
                        }
                        addr144:
                        while(_loc3_ || _loc3_)
                        {
                           continue loop1;
                           if(_loc3_ || param2)
                           {
                              return;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§="2§);
            if(!_loc4_)
            {
               §§push(0.5);
               if(!(_loc4_ && param1))
               {
                  §§push(param1.y);
                  if(_loc3_ || param1)
                  {
                     §§push(param2.y);
                     if(_loc3_)
                     {
                        addr133:
                        §§push(§§pop() + §§pop());
                        if(_loc3_)
                        {
                           addr136:
                           §§push(§§pop() * §§pop());
                           if(!(_loc4_ && this))
                           {
                              §§pop().y = §§pop();
                              §§goto(addr144);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr133);
               }
               §§goto(addr136);
            }
            §§goto(addr162);
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
            if(!_loc11_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(!_loc11_)
            {
               §§push(§§pop() - param1.position.y);
               if(!_loc11_)
               {
                  addr48:
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
                     if(_loc12_)
                     {
                        §§push(_loc6_);
                        if(!(_loc11_ && this))
                        {
                           addr83:
                           §§push(§§pop() + §§pop() * _loc4_.col1.y);
                           if(_loc12_)
                           {
                              addr86:
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr83);
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(!_loc11_)
                     {
                        §§push(_loc4_.col2.x);
                        if(_loc12_)
                        {
                           §§goto(addr114);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc11_)
                        {
                           addr114:
                           §§goto(addr115);
                        }
                        addr115:
                        §§push(§§pop() * §§pop());
                        if(_loc12_)
                        {
                           §§push(_loc6_);
                           if(!(_loc11_ && this))
                           {
                              §§push(§§pop() * _loc4_.col2.y);
                           }
                        }
                        var _loc8_:Number = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§6!-§)
                           {
                              return true;
                           }
                           _loc3_ = this.§^c§[_loc9_];
                           if(!(_loc11_ && _loc3_))
                           {
                              §§push(_loc7_);
                              if(!(_loc11_ && param2))
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc12_ || param2)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc11_ && this))
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(_loc8_);
                                             if(_loc12_ || _loc3_)
                                             {
                                                addr189:
                                                §§push(§§pop() - _loc3_.y);
                                                if(!_loc12_)
                                                {
                                                }
                                                addr193:
                                                _loc6_ = §§pop();
                                                addr194:
                                                _loc3_ = this.§#`§[_loc9_];
                                                if(!(_loc12_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc3_.x);
                                                if(_loc12_ || param2)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         addr227:
                                                         §§push(_loc3_.y);
                                                         if(_loc12_)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc12_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc12_)
                                                                  {
                                                                  }
                                                                  addr250:
                                                                  addr251:
                                                                  if(§§pop() > 0)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc9_++;
                                                                  continue;
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc12_ || param2)
                                                               {
                                                                  addr249:
                                                                  _loc10_ = §§pop();
                                                                  §§goto(addr250);
                                                               }
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr227);
                                             }
                                          }
                                          §§goto(addr194);
                                       }
                                    }
                                    §§goto(addr193);
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           §§goto(addr189);
                        }
                        return false;
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr83);
               }
               §§goto(addr86);
            }
            §§goto(addr48);
         }
         §§goto(addr36);
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
         §§push(param2.§"!7§);
         if(_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc21_ && this))
         {
            §§push(param2.p1);
            if(_loc20_ || param1)
            {
               §§push(§§pop().x);
               if(!(_loc21_ && param2))
               {
                  §§push(param3.position);
                  if(!_loc21_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc21_ && param1))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc20_ || param3)
                        {
                           §§push(Number(§§pop()));
                           if(_loc20_ || this)
                           {
                              _loc6_ = §§pop();
                              if(_loc20_)
                              {
                                 addr98:
                                 §§push(param2.p1.y);
                                 if(_loc20_ || param1)
                                 {
                                    addr109:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc20_ || param2)
                                    {
                                       addr118:
                                       _loc7_ = Number(§§pop());
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(_loc20_ || param1)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc20_ || param3)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc21_)
                                       {
                                          addr151:
                                          §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                          if(_loc20_)
                                          {
                                             addr154:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(_loc6_);
                                    if(_loc20_ || param1)
                                    {
                                       §§push(_loc8_.col2.x);
                                       if(_loc20_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc21_)
                                          {
                                             addr177:
                                             §§push(_loc7_);
                                             if(_loc20_)
                                             {
                                                addr180:
                                                §§push(§§pop() * _loc8_.col2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc21_)
                                             {
                                                addr187:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc11_:* = §§pop();
                                             if(!_loc21_)
                                             {
                                                §§push(param2.p2);
                                                if(_loc20_ || param2)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc21_ && this))
                                                   {
                                                      §§push(param3.position);
                                                      if(_loc20_ || param1)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc21_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc20_ || param1)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!(_loc21_ && param2))
                                                                  {
                                                                     addr241:
                                                                     addr239:
                                                                     §§push(param2.p2.y);
                                                                     if(_loc20_)
                                                                     {
                                                                        addr244:
                                                                        addr247:
                                                                        addr246:
                                                                        §§push(§§pop() - param3.position.y);
                                                                        if(_loc20_ || param2)
                                                                        {
                                                                        }
                                                                        addr256:
                                                                        _loc7_ = §§pop();
                                                                        _loc8_ = param3.R;
                                                                        §§push(_loc6_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(_loc8_.col1.x);
                                                                           if(_loc20_ || param2)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr284:
                                                                                    §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       addr287:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr284);
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc6_);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 §§push(_loc8_.col2.x);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       addr300:
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          addr307:
                                                                                          §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                          if(_loc20_ || param2)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr307);
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(!(_loc21_ && this))
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc14_:* = §§pop();
                                                                                    §§push(_loc13_);
                                                                                    if(!(_loc21_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() - _loc11_);
                                                                                       if(!(_loc21_ && param3))
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
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(this.§6!-§);
                                                                                          if(_loc20_ || param1)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                §§goto(addr814);
                                                                                             }
                                                                                             §§push((_loc9_ = this.§^c§[_loc17_]).x);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc21_ && this))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc21_ && this))
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc9_.y);
                                                                                                            if(!(_loc21_ && this))
                                                                                                            {
                                                                                                               addr397:
                                                                                                               §§push(§§pop() - _loc11_);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  addr402:
                                                                                                                  _loc7_ = Number(§§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr402);
                                                                                                         }
                                                                                                         §§push((_loc9_ = this.§#`§[_loc17_]).x);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc21_ && param2))
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(_loc20_ || param2)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc20_ || this)
                                                                                                                        {
                                                                                                                           addr449:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc20_ || param3)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc21_ && this))
                                                                                                                              {
                                                                                                                                 _loc18_ = §§pop();
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.x);
                                                                                                                                    loop35:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       loop25:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop26:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.y);
                                                                                                                                             loop27:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                loop28:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr778:
                                                                                                                                                      loop37:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            addr780:
                                                                                                                                                            loop38:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                               loop39:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() != §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr741:
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        loop7:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop8:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc21_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                    loop9:
                                                                                                                                                                                    while(!(_loc21_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       loop10:
                                                                                                                                                                                       for(; §§pop(); while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc21_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop10;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr676);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr589);
                                                                                                                                                                                       })
                                                                                                                                                                                       {
                                                                                                                                                                                          loop11:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             loop12:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                   loop41:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                      loop42:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                         loop43:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                     break loop10;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr714:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               loop4:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                  loop5:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop6:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc20_ || param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop7;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc4_ = §§pop();
                                                                                                                                                                                                                           loop30:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc16_ = §§pop();
                                                                                                                                                                                                                              loop31:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop17:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                                                                       if(!(_loc21_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr528:
                                                                                                                                                                                                                                                      §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                      if(_loc21_ && param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop8;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop4;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         do
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc17_++;
                                                                                                                                                                                                                                                            if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop17;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop0;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                              if(!(_loc21_ && param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                    loop20:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr590:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc20_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                                                                if(_loc21_ && param3)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr629:
                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr634:
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                               break loop20;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop41;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop39;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc20_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr651:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc21_ && param3)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break loop20;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr644:
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                                                                                                                    addr589:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop43;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop8;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop5;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr634);
                                                                                                                                                                                                                                                                  addr692:
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop31;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr538:
                                                                                                                                                                                                                                                            if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        return §§pop();
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop10;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr676:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc20_ || param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr692);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop6;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop30;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr716:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr651);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr590);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr644);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(_loc20_);
                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                         addr786:
                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                         break loop9;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr538);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr739:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr785:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr786);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr528);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr784:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr784:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr785);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr629);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr634);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr788:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr788);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr739);
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
                                                                                                                                                                                                   addr707:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr784);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr783:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr784);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr716);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop25;
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
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr783);
                                                                                                                              }
                                                                                                                              §§goto(addr737);
                                                                                                                           }
                                                                                                                           §§goto(addr784);
                                                                                                                        }
                                                                                                                        §§goto(addr714);
                                                                                                                     }
                                                                                                                     §§goto(addr711);
                                                                                                                  }
                                                                                                                  §§goto(addr449);
                                                                                                               }
                                                                                                               §§goto(addr778);
                                                                                                            }
                                                                                                            §§goto(addr780);
                                                                                                         }
                                                                                                         §§goto(addr707);
                                                                                                      }
                                                                                                      §§goto(addr397);
                                                                                                   }
                                                                                                   §§goto(addr402);
                                                                                                }
                                                                                                §§goto(addr397);
                                                                                             }
                                                                                             §§goto(addr402);
                                                                                          }
                                                                                          §§goto(addr806);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr806:
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc20_ || param3)
                                                                                       {
                                                                                          addr814:
                                                                                          §§goto(addr817);
                                                                                       }
                                                                                       addr817:
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          break loop0;
                                                                                       }
                                                                                       param1.fraction = _loc4_;
                                                                                       _loc8_ = param3.R;
                                                                                       _loc9_ = this.§#`§[_loc16_];
                                                                                       if(_loc20_ || param1)
                                                                                       {
                                                                                          §§push(param1.normal);
                                                                                          loop44:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_.col1);
                                                                                             addr934:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr935:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.x);
                                                                                                   addr937:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr938:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         addr950:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr951:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_.y);
                                                                                                               addr953:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr954:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr955:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        addr956:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop44;
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
                                                                                          addr932:
                                                                                       }
                                                                                       else if(true)
                                                                                       {
                                                                                          §§goto(addr957);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.normal);
                                                                                          if(_loc20_ || param1)
                                                                                          {
                                                                                             §§push(_loc8_.col1);
                                                                                             if(!(_loc21_ && param2))
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(_loc9_.x);
                                                                                                   if(_loc20_ || param3)
                                                                                                   {
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc20_ || param2)
                                                                                                         {
                                                                                                            addr883:
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               if(!(_loc21_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!(_loc21_ && param2))
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        addr907:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr912:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc21_ && param3))
                                                                                                                              {
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr938);
                                                                                                                              }
                                                                                                                              §§goto(addr955);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr937);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr954);
                                                                                                                     }
                                                                                                                     §§goto(addr953);
                                                                                                                  }
                                                                                                                  §§goto(addr907);
                                                                                                               }
                                                                                                               §§goto(addr950);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr935);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr912);
                                                                                                      }
                                                                                                      §§goto(addr951);
                                                                                                   }
                                                                                                   §§goto(addr907);
                                                                                                }
                                                                                                §§goto(addr883);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr934);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr932);
                                                                                          }
                                                                                          §§goto(addr934);
                                                                                       }
                                                                                       return true;
                                                                                    }
                                                                                    addr957:
                                                                                    return false;
                                                                                    §§push(0);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     §§goto(addr256);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr154);
                           }
                        }
                        §§goto(addr118);
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr118);
            }
         }
         §§goto(addr98);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§^c§[0];
         §§push(param2.position.x);
         if(!(_loc12_ && _loc3_))
         {
            §§push(_loc3_.col1.x);
            if(!(_loc12_ && param2))
            {
               §§push(_loc4_.x);
               if(_loc13_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc12_)
                  {
                     addr63:
                     §§push(_loc3_.col2.x);
                     if(!(_loc12_ && _loc3_))
                     {
                        addr76:
                        §§push(§§pop() + §§pop() * _loc4_.y);
                     }
                     §§goto(addr76);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc12_)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!_loc12_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc12_ && this))
                     {
                        §§push(_loc4_.x);
                        if(_loc13_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc13_ || this)
                           {
                              addr114:
                              §§push(_loc3_.col2.y);
                              if(_loc13_ || this)
                              {
                                 addr127:
                                 §§push(§§pop() + §§pop() * _loc4_.y);
                              }
                              §§goto(addr127);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc13_ || param2)
                           {
                              addr136:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc13_ || param2)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc6_);
                           if(!_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           var _loc9_:int = 1;
                           loop0:
                           while(_loc9_ < this.§6!-§)
                           {
                              _loc4_ = this.§^c§[_loc9_];
                              if(_loc13_)
                              {
                                 §§push(param2.position);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc13_ || param1)
                                    {
                                       §§push(_loc3_.col1);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr542:
                                          addr466:
                                          while(true)
                                          {
                                             §§push(_loc4_.x);
                                             addr544:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr545:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col2);
                                                   addr547:
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
                                                         addr552:
                                                      }
                                                      addr553:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr554:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§push(_loc3_.col1);
                                             if(!(_loc13_ || _loc3_))
                                             {
                                                continue loop2;
                                             }
                                             §§push(§§pop().y);
                                             if(_loc13_ || param1)
                                             {
                                                §§push(_loc4_.x);
                                                if(!(_loc12_ && param2))
                                                {
                                                   if(!(_loc12_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         if(!_loc12_)
                                                         {
                                                            addr504:
                                                            §§push(§§pop().y);
                                                            if(_loc13_ || param1)
                                                            {
                                                               loop14:
                                                               for(; _loc13_ || this; §§goto(addr504))
                                                               {
                                                                  §§push(_loc4_.y);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc13_ || param2))
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() < §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   addr437:
                                                                                                   while(_loc13_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   addr556:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc10_ = §§pop();
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                                addr436:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr443:
                                                                                                   addr555:
                                                                                                   while(!(_loc12_ && param1))
                                                                                                   {
                                                                                                   }
                                                                                                   addr555:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr556);
                                                                                                   }
                                                                                                }
                                                                                                addr442:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                continue loop13;
                                                                                                §§goto(addr440);
                                                                                             }
                                                                                             while(_loc13_ || param1)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   loop31:
                                                                                                   for(; !_loc12_; if(!(_loc13_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(_loc12_ && param2)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   },§§goto(addr232))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr420:
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc13_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        loop36:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc12_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc12_ && _loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                              loop37:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 if(!(_loc12_ && param2))
                                                                                                                                 {
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(_loc13_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             addr348:
                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop56:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr372:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr373:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                         addr374:
                                                                                                                                                         loop38:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  if(!_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc13_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop37;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop36;
                                                                                                                                                               }
                                                                                                                                                               addr257:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc13_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop56;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc12_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc12_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                           addr403:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    break loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr436);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr440);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr442);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop32;
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr377);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop32;
                                                                                                                                          }
                                                                                                                                          addr414:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                continue loop33;
                                                                                                                                             }
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr372);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr368:
                                                                                                                                       }
                                                                                                                                       §§goto(addr440);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr374);
                                                                                                                              }
                                                                                                                              continue loop34;
                                                                                                                           }
                                                                                                                           §§goto(addr380);
                                                                                                                        }
                                                                                                                        §§goto(addr542);
                                                                                                                     }
                                                                                                                     §§goto(addr437);
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                  {
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr414);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                                §§goto(addr403);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     addr524:
                                                                  }
                                                                  §§goto(addr552);
                                                               }
                                                               §§goto(addr553);
                                                               addr512:
                                                            }
                                                            §§goto(addr524);
                                                         }
                                                         §§goto(addr547);
                                                      }
                                                      addr500:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr544);
                                                   }
                                                   §§goto(addr545);
                                                }
                                                §§goto(addr512);
                                             }
                                             §§goto(addr500);
                                          }
                                       }
                                    }
                                    §§goto(addr555);
                                 }
                              }
                              §§goto(addr338);
                           }
                           if(_loc13_)
                           {
                              §§push(param1.§=!H§);
                              if(!_loc12_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() - b2internal::&!$);
                                    if(_loc13_ || _loc3_)
                                    {
                                       §§goto(addr580);
                                    }
                                    §§goto(addr644);
                                 }
                                 addr580:
                                 §§pop().x = §§pop();
                                 if(!_loc12_)
                                 {
                                    addr624:
                                    §§push(param1.§=!H§);
                                    §§push(_loc6_);
                                    if(!(_loc12_ && param1))
                                    {
                                       addr644:
                                       §§pop().y = §§pop() - b2internal::&!$;
                                       while(true)
                                       {
                                          §§push(param1.§6P§);
                                          loop59:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr618:
                                             while(true)
                                             {
                                                §§pop().x = §§pop() + b2internal::&!$;
                                                continue loop59;
                                             }
                                          }
                                       }
                                       addr645:
                                    }
                                    §§goto(addr644);
                                 }
                                 return;
                              }
                              §§goto(addr624);
                           }
                           §§goto(addr645);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr136);
               }
               §§goto(addr76);
            }
            §§goto(addr63);
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
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(!_loc27_)
         {
            if(this.§6!-§ == 2)
            {
               §§push(param1.center);
               loop136:
               while(true)
               {
                  §§push(0.5);
                  addr136:
                  while(true)
                  {
                     §§push(§§pop() * (this.§^c§[0].x + this.§^c§[1].x));
                     addr148:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        continue loop136;
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(!(_loc27_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc28_ || this)
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
               while(_loc10_ < this.§6!-§)
               {
                  _loc11_ = this.§^c§[_loc10_];
                  if(!_loc27_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§6!-§ ? this.§^c§[int(_loc10_ + 1)] : this.§^c§[0];
                     if(_loc28_)
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
                                 loop4:
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
                                             loop8:
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
                                                         loop12:
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
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop19:
                                                                              while(true)
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
                                                                                          while(!_loc27_)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                addr1132:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr1133:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      addr1134:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr1135:
                                                                                                         while(_loc28_ || param2)
                                                                                                         {
                                                                                                            _loc17_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               addr1092:
                                                                                                               while(!(_loc27_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc17_);
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       while(!(_loc27_ && this))
                                                                                       {
                                                                                          §§push(0.25);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             if(_loc27_ && _loc3_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             if(!(_loc28_ || _loc3_))
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§goto(addr718);
                                                                                             §§push(_loc21_);
                                                                                          }
                                                                                          §§goto(addr800);
                                                                                          §§goto(addr661);
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
                     while(true)
                     {
                        §§goto(addr1078);
                     }
                  }
                  §§goto(addr231);
               }
               if(_loc28_ || _loc3_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!(_loc27_ && this))
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§3,§ = §§pop();
                  if(!_loc27_)
                  {
                     §§push(_loc3_);
                     if(_loc28_)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1290:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1291:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr1292:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                        addr1289:
                     }
                     while(true)
                     {
                        _loc3_ = §§pop();
                     }
                     addr1293:
                  }
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(!(_loc27_ && param2))
                  {
                     §§push(1);
                     if(_loc28_)
                     {
                        §§push(_loc5_);
                        if(!(_loc27_ && param2))
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc27_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc27_)
                              {
                                 addr1266:
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc27_)
                              {
                                 if(!_loc27_)
                                 {
                                    _loc4_ = §§pop();
                                    while(_loc28_)
                                    {
                                       param1.center.Set(_loc3_,_loc4_);
                                       do
                                       {
                                          §§push(param1);
                                          §§push(param2);
                                          if(_loc28_ || param1)
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().I = §§pop();
                                       }
                                       while(_loc27_ && _loc3_);
                                       
                                       if(_loc28_ || param1)
                                       {
                                          return;
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr1292);
                              }
                              §§goto(addr1293);
                           }
                           else
                           {
                              §§goto(addr1291);
                           }
                        }
                        else
                        {
                           §§goto(addr1290);
                        }
                        §§goto(addr1291);
                     }
                     else
                     {
                        §§goto(addr1289);
                     }
                  }
                  §§goto(addr1266);
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 976
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §]!`§() : int
      {
         return this.§6!-§;
      }
      
      public function §`"3§() : Vector.<b2Vec2>
      {
         return this.§^c§;
      }
      
      public function §6q§() : Vector.<b2Vec2>
      {
         return this.§#`§;
      }
      
      public function §5R§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§^c§[0].x * param1.x);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() + this.§^c§[0].y * param1.y);
            if(!(_loc6_ && param1))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ || _loc2_)
               {
                  if(_loc7_)
                  {
                     if(§§pop() >= this.§6!-§)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc2_);
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(!(_loc6_ && this))
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              loop2:
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
                                       addr189:
                                       addr135:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      break;
                                                   }
                                                   addr149:
                                                   while(true)
                                                   {
                                                      §§push(this.§^c§[_loc4_].y * param1.y);
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr168:
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc7_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                  }
                                                                  addr182:
                                                               }
                                                            }
                                                            addr168:
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr182);
                                          }
                                          break;
                                       }
                                       _loc3_ = §§pop();
                                    }
                                    addr188:
                                 }
                                 §§goto(addr188);
                              }
                           }
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr189);
                              §§goto(addr135);
                           }
                        }
                        continue;
                     }
                     §§push(this.§^c§[_loc4_].x * param1.x);
                     §§goto(addr149);
                  }
                  §§goto(addr188);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr52);
      }
      
      public function §!F§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§^c§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§^c§[0].y * param1.y);
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
            if(!_loc6_)
            {
               if(§§pop() >= this.§6!-§)
               {
                  if(_loc7_ || param1)
                  {
                     break;
                  }
                  loop8:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           _loc4_++;
                           continue loop8;
                        }
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc7_ || _loc3_)
                        {
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 addr97:
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr100);
                                 }
                                 else
                                 {
                                    addr136:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr137:
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc4_);
                                             if(!(_loc6_ && this))
                                             {
                                                addr159:
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop4;
                                                }
                                                addr159:
                                             }
                                             §§goto(addr159);
                                          }
                                       }
                                    }
                                    addr136:
                                 }
                                 §§goto(addr68);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    break loop4;
                                 }
                                 addr131:
                              }
                           }
                           break;
                        }
                        §§goto(addr97);
                     }
                     addr100:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           while(true)
                           {
                              _loc5_ = §§pop();
                              §§goto(addr136);
                           }
                           addr135:
                        }
                        §§goto(addr137);
                     }
                  }
               }
               else
               {
                  §§push(this.§^c§[_loc4_].x * param1.x);
                  if(_loc7_ || this)
                  {
                     §§push(this.§^c§[_loc4_].y * param1.y);
                     if(_loc7_)
                     {
                        §§goto(addr131);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr159);
         }
         return this.§^c§[_loc2_];
      }
      
      private function §]3§() : Boolean
      {
         return false;
      }
      
      private function §2a§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§^c§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!_loc3_)
               {
                  break;
               }
               do
               {
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
               }
               while(_loc3_ && param1);
               
               continue;
               addr44:
            }
            else
            {
               this.§^c§[_loc2_] = new b2Vec2();
            }
            while(true)
            {
               this.§#`§[_loc2_] = new b2Vec2();
               while(true)
               {
                  _loc2_++;
                  §§goto(addr44);
               }
            }
         }
      }
   }
}
