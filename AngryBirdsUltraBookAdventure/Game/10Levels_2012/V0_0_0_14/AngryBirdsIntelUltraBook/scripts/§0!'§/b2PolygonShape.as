package §0!'§
{
   import § D§.*;
   import §&!-§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §-g§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-g§ = new b2Mat22();
         }
      }
      
      b2internal var §[E§:b2Vec2;
      
      b2internal var §%§:Vector.<b2Vec2>;
      
      b2internal var §<0§:Vector.<b2Vec2>;
      
      b2internal var §']§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               §"!1§ = b2internal::8y;
               while(true)
               {
                  this.§[E§ = new b2Vec2();
                  while(!_loc1_)
                  {
                     this.§%§ = new Vector.<b2Vec2>();
                     loop3:
                     while(!(_loc1_ && _loc1_))
                     {
                        this.§<0§ = new Vector.<b2Vec2>();
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public static function §6!+§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.§2!C§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §6!-§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || b2PolygonShape)
         {
            _loc3_.§"!Z§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §+!>§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§%5§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §%!k§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§?!1§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §;!w§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || _loc3_)
         {
            _loc3_.§8!h§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §^!I§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc17_ && b2PolygonShape))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc18_)
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
            if(_loc18_ || param1)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(_loc18_)
               {
                  §§push(_loc9_.x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
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
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          while(!_loc17_)
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
                                                         addr377:
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
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
                                                                     while(!(_loc17_ && _loc3_))
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
                                                                              loop21:
                                                                              while(!(_loc17_ && b2PolygonShape))
                                                                              {
                                                                                 §§push(_loc14_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(!(_loc18_ || param2))
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                    }
                                                                                    addr326:
                                                                                 }
                                                                                 loop23:
                                                                                 while(!(_loc17_ && b2PolygonShape))
                                                                                 {
                                                                                    §§push(§§pop() * _loc13_);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr337:
                                                                                       addr270:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr338:
                                                                                          while(!(_loc17_ && param2))
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc17_ && param2))
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc18_ || b2PolygonShape)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                addr295:
                                                                                                loop30:
                                                                                                while(!_loc17_)
                                                                                                {
                                                                                                   _loc16_ = §§pop();
                                                                                                   while(_loc18_ || param2)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc18_ || param2)
                                                                                                         {
                                                                                                            if(_loc18_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               addr267:
                                                                                                               while(_loc18_)
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         addr240:
                                                                                                         addr240:
                                                                                                         if(_loc18_ || param1)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(_loc18_ || b2PolygonShape)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  loop33:
                                                                                                                  while(_loc18_ || b2PolygonShape)
                                                                                                                  {
                                                                                                                     _loc3_.§[!C§(new b2Vec2(_loc5_,_loc6_));
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc18_ || param2)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              _loc3_.§[!C§(_loc9_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc3_.§[!C§(_loc10_);
                                                                                                                                 while(_loc18_)
                                                                                                                                 {
                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * _loc7_);
                                                                                                                                       }
                                                                                                                                       §§pop().§;a§(§§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr139:
                                                                                                                                             if(!(_loc18_ || b2PolygonShape))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       while(!_loc17_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr267);
                                                                                                                                          §§push(0.5);
                                                                                                                                          §§goto(addr139);
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    while(false);
                                                                                                                                    
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 continue loop10;
                                                                                                                                 if(_loc17_ && b2PolygonShape)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr127);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     §§goto(addr298);
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            §§goto(addr326);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr338);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                    if(!(_loc18_ || b2PolygonShape))
                                    {
                                       continue;
                                    }
                                    §§goto(addr240);
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr305);
            }
            §§goto(addr91);
         }
         if(!(_loc17_ && param2))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc17_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(_loc18_)
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!_loc17_)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      b2internal static function §=!b§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
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
               if(!(_loc26_ && param3))
               {
                  _loc5_[param3] = _loc5_[0];
               }
               if(!(_loc26_ && b2PolygonShape))
               {
                  if(true)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc4_++;
                     addr116:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  addr102:
               }
               while(!_loc27_)
               {
                  §§goto(addr102);
               }
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr116);
         }
         var _loc6_:Number = Number.MAX_VALUE;
         if(_loc27_)
         {
            §§push(1);
            if(_loc27_)
            {
               _loc4_ = §§pop();
               if(_loc27_ || param3)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1193:
               }
               §§goto(addr1196);
            }
            loop5:
            for(; §§pop() <= param3; §§goto(addr1193))
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               if(_loc27_ || param3)
               {
                  §§push(_loc5_[_loc4_].x - _loc7_.x);
                  loop6:
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
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop10:
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
                                       if(_loc26_)
                                       {
                                          break;
                                       }
                                       §§push(_loc8_);
                                       while(true)
                                       {
                                          §§push(_loc10_);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop15:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc8_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc9_);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc26_ && param1))
                                                               {
                                                                  if(_loc26_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     addr934:
                                                                     addr217:
                                                                     while(true)
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     if(!(_loc27_ || b2PolygonShape))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr227:
                                                                        if(!_loc26_)
                                                                        {
                                                                           if(!_loc26_)
                                                                           {
                                                                              addr232:
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc26_)
                                                                              {
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          addr240:
                                                                                          if(_loc27_ || b2PolygonShape)
                                                                                          {
                                                                                             _loc24_ = §§pop();
                                                                                             if(_loc26_ && param2)
                                                                                             {
                                                                                                break loop12;
                                                                                             }
                                                                                             addr255:
                                                                                             if(!(_loc26_ && param2))
                                                                                             {
                                                                                                if(_loc27_ || b2PolygonShape)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      loop78:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            if(!(_loc26_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               if(!(_loc26_ && b2PolygonShape))
                                                                                                               {
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     addr292:
                                                                                                                     if(!(_loc26_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        loop79:
                                                                                                                        while(_loc27_)
                                                                                                                        {
                                                                                                                           addr302:
                                                                                                                           if(_loc27_ || b2PolygonShape)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop80:
                                                                                                                              for(; !_loc26_; if(!(_loc27_ || b2PolygonShape))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },if(!(_loc26_ && param3))
                                                                                                                              {
                                                                                                                                 if(!(_loc26_ && param3))
                                                                                                                                 {
                                                                                                                                    if(_loc27_ || b2PolygonShape)
                                                                                                                                    {
                                                                                                                                       §§goto(addr217);
                                                                                                                                    }
                                                                                                                                    §§goto(addr822);
                                                                                                                                 }
                                                                                                                                 §§goto(addr797);
                                                                                                                              },§§goto(addr641))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop81:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc26_ && param3))
                                                                                                                                    {
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       loop24:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             loop26:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop27:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                   addr917:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(Number.MAX_VALUE));
                                                                                                                                                      addr909:
                                                                                                                                                      addr935:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            loop30:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(Number.MAX_VALUE));
                                                                                                                                                               loop31:
                                                                                                                                                               while(_loc27_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop12;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(-Number.MAX_VALUE);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     loop33:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-Number.MAX_VALUE);
                                                                                                                                                                           loop35:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              addr881:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                 addr882:
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
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop() < param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                                                                                break loop78;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop12;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr594:
                                                                                                                                                                                                   while(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr604);
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                   addr594:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop80;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                         loop41:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  addr505:
                                                                                                                                                                                                                  loop43:
                                                                                                                                                                                                                  while(_loc27_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(!(_loc26_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr798:
                                                                                                                                                                                                                        addr797:
                                                                                                                                                                                                                        addr796:
                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           loop50:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              addr800:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr801:
                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                 loop52:
                                                                                                                                                                                                                                 while(!(_loc26_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                                                                    loop53:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                             addr769:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                          while(_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr772:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr854:
                                                                                                                                                                                                                                                loop55:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr737:
                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr748:
                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                            break loop43;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         loop57:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                                                                            addr691:
                                                                                                                                                                                                                                                            loop58:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                                                                               addr671:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                                                                        addr633:
                                                                                                                                                                                                                                                                        _loc17_++;
                                                                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                                                                        addr688:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop33;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr750:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                     addr751:
                                                                                                                                                                                                                                                                     continue loop57;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr871:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                                                                                                                                                                               break loop55;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr791:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop64:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   addr855:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop64;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                                                                         break loop53;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop31;
                                                                                                                                                                                                                                                addr854:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   break loop81;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr854);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr794:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          addr795:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr796);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop53;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                       addr813:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!(_loc26_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr822:
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                             break loop41;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr791);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop15;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr715);
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr750);
                                                                                                                                                                                                                  §§goto(addr292);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr504:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            §§goto(addr302);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr824:
                                                                                                                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                            §§goto(addr822);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr496:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr573:
                                                                                                                                                                                                         while(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc4_++;
                                                                                                                                                                                                               break loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1192:
                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr573:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr694);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr671);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr604:
                                                                                                                                                                                                   while(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr934);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                   addr604:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr855);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr772);
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
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         §§goto(addr240);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    if(!(_loc27_ || param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          continue loop80;
                                                                                                                                       }
                                                                                                                                       addr171:
                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc27_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                continue loop80;
                                                                                                                                             }
                                                                                                                                             continue loop79;
                                                                                                                                          }
                                                                                                                                          §§goto(addr824);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                             {
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(0.95);
                                                                                                                                                   break loop80;
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr171);
                                                                                                                                          }
                                                                                                                                          §§goto(addr801);
                                                                                                                                          addr535:
                                                                                                                                       }
                                                                                                                                       §§goto(addr604);
                                                                                                                                    }
                                                                                                                                    §§goto(addr737);
                                                                                                                                 }
                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                 §§goto(addr782);
                                                                                                                              }
                                                                                                                              while(!(_loc26_ && param2))
                                                                                                                              {
                                                                                                                                 if(_loc27_ || param3)
                                                                                                                                 {
                                                                                                                                    if(!(_loc26_ && b2PolygonShape))
                                                                                                                                    {
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          break loop79;
                                                                                                                                       }
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    §§goto(addr813);
                                                                                                                                 }
                                                                                                                                 §§goto(addr795);
                                                                                                                              }
                                                                                                                              §§goto(addr747);
                                                                                                                              addr310:
                                                                                                                           }
                                                                                                                           §§goto(addr496);
                                                                                                                        }
                                                                                                                        while(_loc27_)
                                                                                                                        {
                                                                                                                           §§goto(addr573);
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr798);
                                                                                                                     }
                                                                                                                     §§goto(addr504);
                                                                                                                  }
                                                                                                                  §§goto(addr573);
                                                                                                               }
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                            §§goto(addr656);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr330:
                                                                                                            while(!(_loc26_ && param1))
                                                                                                            {
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  _loc23_ = §§pop();
                                                                                                                  §§goto(addr340);
                                                                                                               }
                                                                                                               §§goto(addr505);
                                                                                                            }
                                                                                                            addr330:
                                                                                                         }
                                                                                                         §§goto(addr594);
                                                                                                      }
                                                                                                      addr869:
                                                                                                      §§goto(addr870);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr983);
                                                                                                   §§push(param1.R);
                                                                                                }
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                          §§goto(addr909);
                                                                                       }
                                                                                       §§goto(addr881);
                                                                                    }
                                                                                    §§goto(addr869);
                                                                                 }
                                                                                 §§goto(addr604);
                                                                              }
                                                                              §§goto(addr330);
                                                                           }
                                                                           §§goto(addr638);
                                                                        }
                                                                        §§goto(addr513);
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                               }
                                                               §§goto(addr935);
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          if(!(_loc27_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr671);
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr917);
            }
         }
         addr1196:
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            super.Set(param1);
            if(!(_loc5_ && _loc3_))
            {
               if(param1 is b2PolygonShape)
               {
                  addr37:
                  _loc2_ = param1 as b2PolygonShape;
                  if(!_loc5_)
                  {
                     this.§[E§.SetV(_loc2_.§[E§);
                     while(true)
                     {
                        this.§']§ = _loc2_.§']§;
                     }
                     addr141:
                  }
                  loop1:
                  while(true)
                  {
                     this.§[!'§(this.§']§);
                     while(_loc4_ || param1)
                     {
                        _loc3_ = 0;
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        §§goto(addr141);
                     }
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc3_ < this.§']§)
                     {
                        this.§%§[_loc3_].SetV(_loc2_.§%§[_loc3_]);
                        loop4:
                        while(true)
                        {
                           addr68:
                           while(true)
                           {
                              this.§<0§[_loc3_].SetV(_loc2_.§<0§[_loc3_]);
                              while(_loc4_)
                              {
                                 _loc3_++;
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function §2!C§(param1:Array, param2:Number = 0) : void
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
         if(!(_loc7_ && this))
         {
            this.§"!Z§(_loc3_,param2);
         }
      }
      
      public function §"!Z§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
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
            if(!_loc7_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr211:
                     while(true)
                     {
                        param2 = §§pop();
                        addr212:
                        while(true)
                        {
                        }
                     }
                  }
                  addr208:
               }
               loop1:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  do
                  {
                     this.§']§ = param2;
                     loop3:
                     do
                     {
                        this.§[!'§(param2);
                        for(; _loc8_; _loc3_ = 0,if(_loc8_ || _loc3_)
                        {
                           continue loop3;
                        })
                        {
                           if(_loc8_)
                           {
                              continue;
                           }
                           §§goto(addr208);
                        }
                        continue loop1;
                     }
                     while(_loc7_ && _loc3_);
                     
                  }
                  while(_loc7_);
                  
                  addr181:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc8_)
                     {
                        §§push(this.§']§);
                        if(_loc8_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(0);
                                    loop17:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop18:
                                       while(true)
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             loop20:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(this.§']§);
                                                   addr292:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr295:
                                                            this.§[E§ = §^!I§(this.§%§,this.§']§);
                                                         }
                                                         return;
                                                      }
                                                      §§push(_loc3_);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc7_ && this)
                                                         {
                                                            continue loop17;
                                                         }
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc8_)
                                                            {
                                                               if(!(_loc8_ || _loc3_))
                                                               {
                                                                  break loop8;
                                                               }
                                                               §§push(_loc3_);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     if(§§pop() < this.§']§)
                                                                     {
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr81:
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr83:
                                                                           §§push(int(§§pop()));
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           addr86:
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr86);
                                                                     }
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        _loc6_ = b2Math.§>G§(this.§%§[_loc5_],this.§%§[_loc4_]);
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           b2Settings.b2Assert(_loc6_.§!!v§() > Number.MIN_VALUE);
                                                                           while(true)
                                                                           {
                                                                              this.§<0§[_loc3_].SetV(b2Math.§=!,§(_loc6_,1));
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 addr251:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§<0§[_loc3_].Normalize();
                                                                                    addr257:
                                                                                    while(!_loc7_)
                                                                                    {
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              addr242:
                                                                              if(_loc7_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              §§goto(addr251);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc3_++;
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              §§goto(addr242);
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  addr74:
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr81);
                                                                  }
                                                                  §§goto(addr83);
                                                                  §§goto(addr81);
                                                               }
                                                               §§goto(addr86);
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      continue loop17;
                                                      §§goto(addr295);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr145:
                                 }
                              }
                              continue;
                           }
                           this.§%§[_loc3_].SetV(param1[_loc3_]);
                           _loc3_++;
                           continue;
                        }
                        §§goto(addr292);
                     }
                     §§goto(addr145);
                  }
               }
            }
            §§goto(addr211);
         }
         §§goto(addr181);
      }
      
      public function §%5§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§']§ = 4;
            while(true)
            {
               this.§[!'§(4);
               while(_loc3_)
               {
                  this.§%§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§%§[1].Set(param1,-param2);
                     addr150:
                     while(true)
                     {
                        this.§%§[2].Set(param1,param2);
                        addr130:
                        while(true)
                        {
                           this.§%§[3].Set(-param1,param2);
                           addr121:
                           while(true)
                           {
                              this.§<0§[0].Set(0,-1);
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §?!1§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§']§ = 4;
            loop0:
            while(true)
            {
               this.§[!'§(4);
               while(true)
               {
                  this.§%§[0].Set(-param1,-param2);
                  while(_loc7_ || param1)
                  {
                     this.§%§[1].Set(param1,-param2);
                     loop3:
                     for(; _loc7_; if(_loc8_ && param3)
                     {
                        continue;
                     },if(!_loc7_)
                     {
                        continue loop0;
                     },this.§[E§ = param3,if(!(_loc8_ && param2))
                     {
                        §§goto(addr30);
                     },§§goto(addr49))
                     {
                        this.§%§[2].Set(param1,param2);
                        while(true)
                        {
                           this.§%§[3].Set(-param1,param2);
                           loop5:
                           while(!(_loc8_ && param3))
                           {
                              this.§<0§[0].Set(0,-1);
                              loop6:
                              while(true)
                              {
                                 this.§<0§[1].Set(1,0);
                                 loop7:
                                 while(true)
                                 {
                                    this.§<0§[2].Set(0,1);
                                    while(true)
                                    {
                                       addr41:
                                       addr30:
                                       while(true)
                                       {
                                          this.§<0§[3].Set(-1,0);
                                          addr49:
                                          while(_loc7_)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       if(!(_loc8_ && param2))
                                       {
                                          if(!_loc8_)
                                          {
                                             while(false)
                                             {
                                                §§goto(addr41);
                                             }
                                             var _loc5_:b2Transform;
                                             (_loc5_ = new b2Transform()).position = param3;
                                             if(_loc7_)
                                             {
                                                _loc5_.R.Set(param4);
                                             }
                                             var _loc6_:int = 0;
                                             while(true)
                                             {
                                                if(_loc6_ >= this.§']§)
                                                {
                                                   if(_loc7_ || this)
                                                   {
                                                      break;
                                                   }
                                                   while(!_loc7_)
                                                   {
                                                      while(!(_loc7_ || param1))
                                                      {
                                                      }
                                                      _loc6_++;
                                                   }
                                                   continue;
                                                }
                                                this.§%§[_loc6_] = b2Math.§,^§(_loc5_,this.§%§[_loc6_]);
                                                while(true)
                                                {
                                                   this.§<0§[_loc6_] = b2Math.§"!+§(_loc5_.R,this.§<0§[_loc6_]);
                                                   §§goto(addr224);
                                                }
                                             }
                                             return;
                                             addr39:
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
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §8!h§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§']§ = 2;
            loop0:
            while(true)
            {
               this.§[!'§(2);
               while(true)
               {
                  this.§%§[0].SetV(param1);
                  loop2:
                  while(true)
                  {
                     this.§%§[1].SetV(param2);
                     loop3:
                     while(true)
                     {
                        §§push(this.§[E§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr180:
                           while(true)
                           {
                              §§push(param1.x);
                              addr192:
                              while(true)
                              {
                                 §§push(param2.x);
                                 addr194:
                                 addr154:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr195:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr196:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop4;
                                       }
                                    }
                                 }
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 §§push(param2.y);
                                 if(_loc4_ || param1)
                                 {
                                    addr172:
                                    §§pop().y = §§pop() * (§§pop() + §§pop());
                                    addr171:
                                    loop11:
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§<0§[0] = b2Math.§=!,§(b2Math.§>G§(param2,param1),1);
                                          while(_loc4_)
                                          {
                                             this.§<0§[0].Normalize();
                                             continue loop2;
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   this.§<0§[1].y = -this.§<0§[0].y;
                                                   addr79:
                                                   if(!_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr63:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr65);
                                                      §§goto(addr79);
                                                   }
                                                }
                                                continue loop11;
                                                continue loop11;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr194);
                              }
                           }
                        }
                     }
                  }
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  this.§<0§[1].x = -this.§<0§[0].x;
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr175);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(_loc11_)
         {
            §§push(§§pop() - param1.position.x);
            if(_loc11_ || param1)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(!(_loc12_ && param1))
            {
               §§push(§§pop() - param1.position.y);
               if(!_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(!(_loc12_ && param1))
            {
               §§push(_loc4_.col1.x);
               if(!(_loc12_ && param2))
               {
                  addr100:
                  §§push(§§pop() * §§pop());
                  if(!(_loc12_ && param2))
                  {
                     §§push(_loc6_);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc4_.col1.y);
                     }
                  }
                  var _loc7_:Number = §§pop();
                  §§push(_loc5_);
                  if(_loc11_ || param1)
                  {
                     §§push(_loc4_.col2.x);
                     if(!_loc12_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc12_)
                        {
                           §§push(_loc6_);
                           if(_loc11_)
                           {
                              §§goto(addr125);
                           }
                           addr125:
                           §§push(§§pop() + §§pop() * _loc4_.col2.y);
                           if(!_loc11_)
                           {
                           }
                           §§goto(addr129);
                        }
                        addr129:
                        var _loc8_:* = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§']§)
                           {
                              return true;
                           }
                           _loc3_ = this.§%§[_loc9_];
                           if(_loc11_ || _loc3_)
                           {
                              §§push(_loc7_);
                              if(!(_loc12_ && param2))
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc11_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc11_ || param2)
                                          {
                                             addr188:
                                             §§push(_loc8_);
                                             if(_loc11_ || param2)
                                             {
                                                addr196:
                                                addr198:
                                                §§push(§§pop() - _loc3_.y);
                                                if(!_loc11_)
                                                {
                                                }
                                                addr202:
                                                _loc6_ = §§pop();
                                                _loc3_ = this.§<0§[_loc9_];
                                                if(_loc12_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc3_.x);
                                                if(!(_loc12_ && _loc3_))
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc11_ || this)
                                                      {
                                                         §§push(_loc3_.y);
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  addr257:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc11_)
                                                                  {
                                                                     addr270:
                                                                     §§push(§§pop());
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        addr278:
                                                                        _loc10_ = §§pop();
                                                                        addr279:
                                                                        §§push(0);
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(_loc11_)
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
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr202);
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr188);
                        }
                        return false;
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr125);
               }
               §§push(§§pop() + §§pop());
               if(_loc11_ || _loc3_)
               {
               }
            }
            §§goto(addr100);
         }
         §§goto(addr40);
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
         §§push(param2.§%!I§);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc20_ && param3))
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
                     if(_loc21_ || param1)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_ || this)
                        {
                           addr81:
                           §§push(Number(§§pop()));
                           if(_loc21_ || this)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc20_ && param2))
                              {
                                 addr99:
                                 §§push(param2.p1.y);
                                 if(_loc21_)
                                 {
                                    addr102:
                                    addr105:
                                    addr104:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_ || this)
                                    {
                                       addr113:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc7_ = §§pop();
                                    addr115:
                                    _loc8_ = param3.R;
                                    §§push(_loc6_);
                                    if(!(_loc20_ && param2))
                                    {
                                       §§push(_loc8_.col1.x);
                                       if(!_loc20_)
                                       {
                                          addr160:
                                          §§push(§§pop() * §§pop());
                                          if(_loc21_ || param2)
                                          {
                                             §§push(_loc7_);
                                             if(_loc21_ || param1)
                                             {
                                                §§push(§§pop() * _loc8_.col1.y);
                                             }
                                          }
                                          var _loc10_:Number = §§pop();
                                          §§push(_loc6_);
                                          if(!(_loc20_ && param3))
                                          {
                                             §§push(_loc8_.col2.x);
                                             if(_loc21_ || param1)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc21_ || param2)
                                                {
                                                   addr188:
                                                   §§push(_loc7_);
                                                   if(_loc21_ || this)
                                                   {
                                                      addr200:
                                                      §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                      if(_loc21_)
                                                      {
                                                         addr203:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      if(_loc21_ || this)
                                                      {
                                                         §§push(param2.p2);
                                                         if(_loc21_ || param3)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc21_ || param1)
                                                            {
                                                               §§push(param3.position);
                                                               if(_loc21_ || this)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc20_ && param3))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr249:
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc20_)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              addr262:
                                                                              §§push(param2.p2.y);
                                                                              if(_loc21_)
                                                                              {
                                                                                 addr265:
                                                                                 §§push(§§pop() - param3.position.y);
                                                                                 if(!(_loc20_ && param3))
                                                                                 {
                                                                                    addr276:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              addr278:
                                                                              _loc8_ = param3.R;
                                                                              §§push(_loc6_);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(_loc8_.col1.x);
                                                                                 if(_loc21_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          addr305:
                                                                                          §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                          }
                                                                                          var _loc12_:* = §§pop();
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(_loc8_.col2.x);
                                                                                             if(_loc21_ || this)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   addr331:
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc20_ && param3))
                                                                                                   {
                                                                                                      addr343:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         addr346:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc13_:* = §§pop();
                                                                                                      §§push(_loc12_);
                                                                                                      if(!(_loc20_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc10_);
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc14_:* = §§pop();
                                                                                                      §§push(_loc13_);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc11_);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr369:
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
                                                                                                               §§push(this.§']§);
                                                                                                               if(_loc21_ || param3)
                                                                                                               {
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     addr840:
                                                                                                                     if(!(_loc20_ && this))
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     param1.fraction = _loc4_;
                                                                                                                     _loc8_ = param3.R;
                                                                                                                     _loc9_ = this.§<0§[_loc16_];
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(param1.normal);
                                                                                                                        loop52:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc8_.col1);
                                                                                                                           addr956:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.x);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_.col2);
                                                                                                                                       addr966:
                                                                                                                                       addr887:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                       }
                                                                                                                                       if(!(_loc21_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(_loc9_.x);
                                                                                                                                       if(_loc21_ || param3)
                                                                                                                                       {
                                                                                                                                          if(!(_loc20_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                             {
                                                                                                                                                addr918:
                                                                                                                                                §§push(_loc8_.col2);
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_.y);
                                                                                                                                                         if(!(_loc20_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr948:
                                                                                                                                                            §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                            addr947:
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               return true;
                                                                                                                                                               addr951:
                                                                                                                                                            }
                                                                                                                                                            continue loop52;
                                                                                                                                                         }
                                                                                                                                                         addr969:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         addr969:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr971:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            continue loop52;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr947);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr966);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr948);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr969);
                                                                                                                                          }
                                                                                                                                          addr967:
                                                                                                                                       }
                                                                                                                                       §§goto(addr948);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr967);
                                                                                                                              }
                                                                                                                              §§goto(addr971);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr954:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.normal);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_.col1);
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr887);
                                                                                                                                 }
                                                                                                                                 §§goto(addr971);
                                                                                                                              }
                                                                                                                              §§goto(addr918);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr956);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr954);
                                                                                                                        }
                                                                                                                        §§goto(addr956);
                                                                                                                     }
                                                                                                                     §§goto(addr951);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push((_loc9_ = this.§%§[_loc17_]).x);
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!(_loc20_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc20_ && this))
                                                                                                                              {
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.y);
                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                    {
                                                                                                                                       addr424:
                                                                                                                                       §§push(§§pop() - _loc11_);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          addr428:
                                                                                                                                          _loc7_ = Number(§§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr428);
                                                                                                                                 }
                                                                                                                                 §§push((_loc9_ = this.§<0§[_loc17_]).x);
                                                                                                                                 if(!(_loc20_ && this))
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
                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc21_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         _loc18_ = §§pop();
                                                                                                                                                         if(_loc21_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_.x);
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               loop45:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr805:
                                                                                                                                                                  loop39:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop38:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr518:
                                                                                                                                                                              loop7:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr530:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc20_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc20_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc21_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                         if(_loc21_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop8:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr783:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop38;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  loop9:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                           addr731:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr730:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop10:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                                                                           loop11:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop12:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          loop13:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             loop14:
                                                                                                                                                                                                                                             while(!(_loc20_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop11;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop16:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               loop17:
                                                                                                                                                                                                                                                               for(; !(_loc20_ && param2); continue loop16)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc21_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          addr606:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc20_ && param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      loop15:
                                                                                                                                                                                                                                                                                                      while(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc20_ && this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc20_ && param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc21_ || param3)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr670:
                                                                                                                                                                                                                                                                                                                     while(!(_loc21_ || this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                           addr801:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                              addr802:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                 addr803:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr804:
                                                                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr778:
                                                                                                                                                                                                                                                                                                                                    addr778:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                                                                                                                       addr779:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                          addr780:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             addr781:
                                                                                                                                                                                                                                                                                                                                             while(!§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop12;
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
                                                                                                                                                                                                                                                                                                                     addr678:
                                                                                                                                                                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop15;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr650:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     addr770:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                        break loop17;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr769:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr670);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr669:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr802);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr778);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                                                                         break loop11;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                                                                                                                      addr623:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr621:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                                                                   addr797:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      addr798:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         addr799:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr796:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr800);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr605:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr797);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr731);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr803);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr779);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr606);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr670);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                                                                                                                     while(!_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop39;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc20_ && this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr769);
                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr759:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr799);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr801);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop7;
                                                                                                                                                                                                                                                                     addr722:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr804);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr707:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr623);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr781);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr707);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr798);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop10;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr751);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr780);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop38;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr621);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr678);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr572:
                                                                                                                                                                                                            if(!(_loc20_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr783);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop7;
                                                                                                                                                                                                         §§goto(addr572);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr570:
                                                                                                                                                                                                      addr579:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr722);
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop7;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr759);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr606);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr650);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr670);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc17_++;
                                                                                                                                                                                 if(!(_loc20_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr518);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr625);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr570);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr807);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr791:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr796);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr579);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr805);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr669);
                                                                                                                                                }
                                                                                                                                                §§goto(addr730);
                                                                                                                                             }
                                                                                                                                             §§goto(addr605);
                                                                                                                                          }
                                                                                                                                          §§goto(addr791);
                                                                                                                                       }
                                                                                                                                       §§goto(addr799);
                                                                                                                                    }
                                                                                                                                    §§goto(addr530);
                                                                                                                                 }
                                                                                                                                 §§goto(addr778);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr428);
                                                                                                                        }
                                                                                                                        §§goto(addr424);
                                                                                                                     }
                                                                                                                     §§goto(addr428);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr832:
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  return false;
                                                                                                               }
                                                                                                               if(_loc21_ || param1)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr840);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr832);
                                                                                                         §§push(0);
                                                                                                      }
                                                                                                      §§goto(addr369);
                                                                                                   }
                                                                                                   §§goto(addr343);
                                                                                                }
                                                                                                §§goto(addr346);
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           §§goto(addr278);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc20_ && this)
                                       {
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr104);
               }
               §§goto(addr81);
            }
            §§goto(addr99);
         }
         §§goto(addr102);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§%§[0];
         §§push(param2.position.x);
         if(_loc12_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc13_)
            {
               §§push(_loc4_.x);
               if(!(_loc13_ && param1))
               {
                  addr66:
                  §§push(§§pop() * §§pop());
                  if(!_loc13_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!(_loc13_ && _loc3_))
                     {
                        §§push(§§pop() * _loc4_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc12_ || this)
                  {
                     addr75:
                     var _loc5_:* = Number(§§pop());
                     §§push(param2.position.y);
                     if(!_loc13_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc12_)
                        {
                           §§push(_loc4_.x);
                           if(_loc12_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc12_)
                              {
                                 addr98:
                                 §§push(_loc3_.col2.y);
                                 if(_loc12_ || param1)
                                 {
                                    addr111:
                                    §§push(§§pop() + §§pop() * _loc4_.y);
                                 }
                                 §§goto(addr111);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc12_ || _loc3_)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc5_);
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(_loc12_ || param2)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              loop0:
                              while(_loc9_ < this.§']§)
                              {
                                 _loc4_ = this.§%§[_loc9_];
                                 if(_loc12_ || _loc3_)
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
                                                      loop15:
                                                      for(; !(_loc13_ && param1); while(!(_loc13_ && this))
                                                      {
                                                         §§goto(addr413);
                                                         §§push(§§pop() < §§pop());
                                                      })
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr511:
                                                            addr289:
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               addr512:
                                                               while(_loc12_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr289:
                                                            if(_loc13_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            _loc8_ = §§pop();
                                                            loop40:
                                                            for(; !_loc13_; _loc9_++,if(_loc13_)
                                                            {
                                                               continue;
                                                            },if(_loc12_ || _loc3_)
                                                            {
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc12_)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           if(!(_loc13_ && _loc3_))
                                                                           {
                                                                              if(!(_loc12_ || this))
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr385);
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr350);
                                                                  addr175:
                                                               }
                                                               §§goto(addr512);
                                                            },§§goto(addr383))
                                                            {
                                                               if(_loc12_ || this)
                                                               {
                                                                  continue;
                                                               }
                                                               loop31:
                                                               while(true)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        addr320:
                                                                        while(true)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop41:
                                                                                          while(_loc12_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   addr366:
                                                                                                   while(!_loc13_)
                                                                                                   {
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                   addr366:
                                                                                                }
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                   {
                                                                                                      addr438:
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         addr350:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc13_ && this)
                                                                                                            {
                                                                                                               break loop31;
                                                                                                            }
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr369:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     break loop40;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr368:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr404);
                                                                                                            }
                                                                                                         }
                                                                                                         addr350:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         break loop41;
                                                                                                      }
                                                                                                      addr438:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr385:
                                                                                                      while(_loc12_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      addr436:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr437:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr438);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr384:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   continue loop31;
                                                                                                }
                                                                                                §§goto(addr368);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             break loop34;
                                                                                          }
                                                                                          addr333:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§goto(addr366);
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                    addr382:
                                                                                    addr196:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr384);
                                                                                          }
                                                                                          addr383:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(!(_loc13_ && _loc3_))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr397);
                                                                                    }
                                                                                    §§push(§§pop() > §§pop());
                                                                                    if(!(_loc12_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc13_ && param2)
                                                                                          {
                                                                                             continue loop40;
                                                                                          }
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                if(_loc12_ || this)
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc12_ || this)
                                                                                                      {
                                                                                                         addr241:
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                         if(_loc12_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc12_ || param1)
                                                                                                            {
                                                                                                               addr288:
                                                                                                               §§goto(addr289);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr437);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr397);
                                                                                                      }
                                                                                                      §§goto(addr289);
                                                                                                   }
                                                                                                   §§goto(addr511);
                                                                                                }
                                                                                                §§goto(addr369);
                                                                                             }
                                                                                             §§goto(addr241);
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§push(_loc11_);
                                                                                       if(_loc12_ || this)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc13_ && param2))
                                                                                          {
                                                                                             addr274:
                                                                                             if(!(_loc13_ && param2))
                                                                                             {
                                                                                                continue loop32;
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                          §§goto(addr289);
                                                                                       }
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                if(_loc12_ || param2)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break loop31;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
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
                                                                                          addr534:
                                                                                          addr414:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr436);
                                                                                          §§push(_loc10_);
                                                                                       }
                                                                                       §§goto(addr438);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    addr374:
                                                                                    while(_loc12_ || this)
                                                                                    {
                                                                                       §§goto(addr382);
                                                                                       §§push(§§pop() < §§pop());
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr374);
                                                                        }
                                                                        addr533:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr534);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr414);
                                                               }
                                                               loop46:
                                                               while(true)
                                                               {
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr437);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr451:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.col1);
                                                                     if(!_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     if(_loc13_ && param2)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§push(_loc4_.x);
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc12_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        §§push(_loc3_.col2);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr482:
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(_loc4_.y);
                                                                                 if(!(_loc13_ && param2))
                                                                                 {
                                                                                    addr494:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc12_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr531);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr533);
                                                                                 }
                                                                                 addr532:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr529);
                                                                              }
                                                                              §§goto(addr531);
                                                                           }
                                                                           §§goto(addr494);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr528);
                                                                        }
                                                                     }
                                                                     §§goto(addr482);
                                                                     continue loop46;
                                                                  }
                                                                  continue loop3;
                                                                  §§goto(addr533);
                                                               }
                                                               §§goto(addr535);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr175);
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
                                 §§goto(addr335);
                              }
                              if(_loc12_)
                              {
                                 §§push(param1.§]S§);
                                 if(_loc12_)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc13_ && param2))
                                    {
                                       §§push(§§pop() - b2internal::6q);
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          §§pop().x = §§pop();
                                          if(!(_loc13_ && param1))
                                          {
                                             addr618:
                                             §§push(param1.§]S§);
                                             §§push(_loc6_);
                                             if(_loc12_ || param1)
                                             {
                                             }
                                             addr628:
                                             §§pop().y = §§pop();
                                             while(true)
                                             {
                                                §§push(param1.§-!o§);
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   addr605:
                                                   §§goto(addr615);
                                                }
                                             }
                                          }
                                          §§goto(addr615);
                                       }
                                       §§push(§§pop() - b2internal::6q);
                                    }
                                    §§goto(addr628);
                                 }
                                 §§goto(addr618);
                              }
                              addr615:
                              while(true)
                              {
                                 §§pop().x = §§pop() + b2internal::6q;
                                 continue loop49;
                              }
                              while(true)
                              {
                                 §§push(param1.§-!o§);
                                 if(_loc13_)
                                 {
                                    continue loop50;
                                 }
                                 §§push(_loc8_);
                                 if(!_loc13_)
                                 {
                                    §§pop().y = §§pop() + b2internal::6q;
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    continue loop49;
                                 }
                                 §§goto(addr605);
                              }
                              return;
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr75);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr66);
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
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(_loc28_ || _loc3_)
         {
            if(this.§']§ == 2)
            {
               §§push(param1.center);
               loop138:
               while(true)
               {
                  §§push(0.5);
                  if(_loc28_ || param2)
                  {
                     §§push(§§pop() * (this.§%§[0].x + this.§%§[1].x));
                  }
                  addr163:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop138;
                     addr116:
                     if(!(_loc27_ && _loc3_))
                     {
                        addr135:
                        §§pop().y = §§pop() * (this.§%§[0].y + this.§%§[1].y);
                        do
                        {
                           param1.§+!<§ = 0;
                        }
                        while(_loc27_ && param1);
                        
                        param1.§+j§ = 0;
                        if(_loc28_ || _loc3_)
                        {
                           return;
                           addr90:
                        }
                        continue loop138;
                     }
                  }
               }
               addr143:
            }
            else
            {
               §§push(0);
               if(!(_loc27_ && param1))
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
               if(_loc28_ || this)
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
               if(_loc28_ || param2)
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
               if(!(_loc27_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§']§)
               {
                  _loc11_ = this.§%§[_loc10_];
                  if(!(_loc27_ && param1))
                  {
                     _loc12_ = _loc10_ + 1 < this.§']§ ? this.§%§[int(_loc10_ + 1)] : this.§%§[0];
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
                                          addr1144:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr1145:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr1146:
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   addr1147:
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
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
                     §§goto(addr972);
                  }
                  §§goto(addr246);
               }
               if(!_loc27_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc28_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§+!<§ = §§pop();
                  if(!(_loc27_ && param2))
                  {
                     §§push(_loc3_);
                     if(!(_loc27_ && param2))
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1265:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1266:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                        addr1264:
                     }
                     loop136:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop137:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr1269:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc28_)
                              {
                                 §§push(1);
                                 if(_loc28_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc27_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc28_ || _loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc28_ || this)
                                          {
                                             if(!_loc27_)
                                             {
                                                addr1246:
                                                §§push(Number(§§pop()));
                                                if(_loc28_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop136;
                                             }
                                             continue loop137;
                                          }
                                          §§goto(addr1246);
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
                              §§goto(addr1246);
                              continue loop137;
                           }
                           _loc4_ = §§pop();
                        }
                     }
                     addr1175:
                  }
                  loop130:
                  while(true)
                  {
                     param1.center.Set(_loc3_,_loc4_);
                     while(_loc28_)
                     {
                        §§push(param1);
                        §§push(param2);
                        if(!_loc27_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().§+j§ = §§pop();
                        if(_loc28_)
                        {
                           if(_loc28_ || param2)
                           {
                              break loop130;
                           }
                           continue loop130;
                        }
                     }
                     §§goto(addr1269);
                  }
                  return;
               }
               §§goto(addr1175);
            }
         }
         while(true)
         {
            §§push(param1.center);
            if(!_loc27_)
            {
               §§push(0.5);
               if(!(_loc27_ && param1))
               {
                  §§goto(addr116);
               }
               §§goto(addr135);
            }
            else
            {
               §§goto(addr143);
            }
         }
         §§goto(addr90);
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
         var _loc5_:b2Vec2 = b2Math.§`m§(param3.R,param1);
         §§push(param2);
         if(!_loc28_)
         {
            §§push(§§pop() - b2Math.§1!P§(param1,param3.position));
            if(_loc27_ || param3)
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
         if(_loc27_ || param3)
         {
            _loc12_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc12_);
            if(_loc27_ || this)
            {
               §§push(this.§']§);
               if(!(_loc28_ && this))
               {
                  loop1:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        _loc7_[_loc12_] = b2Math.§1!P§(_loc5_,this.§%§[_loc12_]) - _loc6_;
                        if(!(_loc28_ && this))
                        {
                           §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                           if(_loc27_)
                           {
                              _loc23_ = §§pop();
                              if(!_loc28_)
                              {
                                 §§push(_loc12_);
                                 if(_loc27_ || param1)
                                 {
                                    §§push(0);
                                    if(!_loc27_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(!(_loc28_ && this))
                                       {
                                          §§push(_loc23_);
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc11_);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc28_ && param2))
                                                         {
                                                            addr208:
                                                            §§push(_loc12_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc28_ && param3))
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc27_ || param3)
                                                                     {
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           _loc8_++;
                                                                           if(!(_loc28_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr86:
                                                                                 do
                                                                                 {
                                                                                    §§push(_loc23_);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             _loc11_ = §§pop();
                                                                                             if(_loc28_ && param2)
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             _loc12_++;
                                                                                             if(!(_loc27_ || param2))
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 while(false);
                                                                                 
                                                                                 continue loop0;
                                                                              }
                                                                              addr109:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr294);
                                                                        addr228:
                                                                     }
                                                                     §§goto(addr483);
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               break;
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr367);
                                                            addr209:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr300);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc11_);
                                                if(!_loc28_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr297);
                                          }
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr440);
                              }
                              §§goto(addr367);
                           }
                           §§goto(addr297);
                        }
                        break;
                     }
                     if(_loc27_ || param2)
                     {
                        §§push(_loc8_);
                        if(!(_loc28_ && param2))
                        {
                           addr440:
                           var _loc26_:* = §§pop();
                           if(_loc27_ || this)
                           {
                              §§push(0);
                              if(_loc27_)
                              {
                                 §§push(_loc26_);
                                 if(!_loc28_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc28_)
                                       {
                                          addr457:
                                          §§push(0);
                                          if(!(_loc28_ && param2))
                                          {
                                             addr479:
                                             if(_loc27_)
                                             {
                                                addr482:
                                                switch(§§pop())
                                                {
                                                   case 1:
                                                      addr347:
                                                      §§push(_loc9_);
                                                      if(_loc28_ && this)
                                                      {
                                                         §§goto(addr440);
                                                      }
                                                      addr356:
                                                      §§push(-1);
                                                      if(!(_loc28_ && param1))
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            §§push(this.§']§);
                                                            if(_loc27_ || param1)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         if(_loc27_)
                                                         {
                                                            addr367:
                                                            §§push(this.§']§);
                                                            if(_loc27_ || this)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(_loc27_ || param1)
                                                               {
                                                                  addr384:
                                                                  §§push(int(§§pop()));
                                                                  if(_loc27_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc27_ || param2)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr421:
                                                                     _loc10_ = §§pop();
                                                                     if(_loc27_ || param3)
                                                                     {
                                                                        addr429:
                                                                     }
                                                                  }
                                                                  addr483:
                                                                  §§push(_loc9_);
                                                                  if(_loc27_)
                                                                  {
                                                                     addr486:
                                                                     break loop0;
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr405:
                                                               §§push(§§pop() - 1);
                                                               if(!(_loc28_ && param1))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§goto(addr421);
                                                                  }
                                                                  §§goto(addr486);
                                                               }
                                                            }
                                                            §§push(int(§§pop()));
                                                            break;
                                                         }
                                                         §§goto(addr429);
                                                         §§goto(addr405);
                                                      }
                                                      break loop0;
                                                   default:
                                                      §§goto(addr483);
                                                   case 0:
                                                      addr297:
                                                      if(_loc11_)
                                                      {
                                                         if(_loc27_)
                                                         {
                                                            addr300:
                                                            _loc24_ = new b2MassData();
                                                            if(_loc27_ || param3)
                                                            {
                                                               this.ComputeMass(_loc24_,1);
                                                            }
                                                            param4.SetV(b2Math.§,^§(param3,_loc24_.center));
                                                            addr335:
                                                            if(_loc28_)
                                                            {
                                                               §§goto(addr335);
                                                            }
                                                            return _loc24_.§+!<§;
                                                         }
                                                         break loop1;
                                                      }
                                                      §§push(0);
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         §§goto(addr344);
                                                      }
                                                      break;
                                                }
                                             }
                                             var _loc13_:* = §§pop();
                                             §§push(_loc10_);
                                             if(_loc27_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc28_)
                                                {
                                                   §§push(§§pop() % this.§']§);
                                                }
                                                §§push(int(§§pop()));
                                             }
                                             var _loc14_:* = §§pop();
                                             §§push(0 - _loc7_[_loc9_]);
                                             if(!_loc28_)
                                             {
                                                §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                if(!_loc28_)
                                                {
                                                   addr534:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc15_:* = §§pop();
                                                §§push(0 - _loc7_[_loc10_]);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                   if(_loc27_ || param3)
                                                   {
                                                      addr558:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc16_:* = §§pop();
                                                   §§push(§§findproperty(b2Vec2));
                                                   §§push(this.§%§[_loc9_].x * (1 - _loc15_));
                                                   if(!_loc28_)
                                                   {
                                                      §§push(this.§%§[_loc13_].x * _loc15_);
                                                      if(!(_loc28_ && this))
                                                      {
                                                         addr587:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(this.§%§[_loc9_].y * (1 - _loc15_));
                                                         if(!_loc28_)
                                                         {
                                                            addr598:
                                                            §§push(§§pop() + this.§%§[_loc13_].y * _loc15_);
                                                         }
                                                         var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                         §§push(§§findproperty(b2Vec2));
                                                         §§push(this.§%§[_loc10_].x * (1 - _loc16_));
                                                         if(_loc27_ || this)
                                                         {
                                                            §§push(this.§%§[_loc14_].x * _loc16_);
                                                            if(_loc27_)
                                                            {
                                                               addr636:
                                                               §§push(§§pop() + §§pop());
                                                               §§push(this.§%§[_loc10_].y * (1 - _loc16_));
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() + this.§%§[_loc14_].y * _loc16_);
                                                               }
                                                            }
                                                            var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                            var _loc19_:Number = 0;
                                                            var _loc20_:b2Vec2 = new b2Vec2();
                                                            var _loc21_:b2Vec2 = this.§%§[_loc13_];
                                                            if(!(_loc28_ && param2))
                                                            {
                                                               §§push(_loc13_);
                                                               if(_loc27_ || param1)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc28_ && this))
                                                                  {
                                                                     addr694:
                                                                     _loc12_ = §§pop();
                                                                     if(!(_loc28_ && this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           addr1021:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc27_ || param3)
                                                                                    {
                                                                                       addr1030:
                                                                                       _loc20_.§;a§(1 / _loc19_);
                                                                                       if(!(_loc28_ && this))
                                                                                       {
                                                                                          addr1042:
                                                                                          param4.SetV(b2Math.§,^§(param3,_loc20_));
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1049);
                                                                                 }
                                                                                 §§push(_loc12_);
                                                                                 if(_loc28_ && param2)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(1);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(§§pop() % this.§']§);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          addr723:
                                                                                          §§push(int(§§pop()));
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr729:
                                                                                          _loc12_ = §§pop();
                                                                                          if(!(_loc27_ || param3))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(_loc14_);
                                                                                          if(_loc28_ && param3)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(_loc27_ || this)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc22_ = _loc18_;
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(_loc27_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc21_.x);
                                                                                                            if(!(_loc28_ && param3))
                                                                                                            {
                                                                                                               §§push(_loc17_.x);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     addr789:
                                                                                                                     §§push(_loc22_.y);
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        §§push(_loc17_.y);
                                                                                                                        if(_loc27_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc27_ || param1)
                                                                                                                           {
                                                                                                                              addr810:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr813:
                                                                                                                                 §§push(_loc21_.y);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    addr817:
                                                                                                                                    §§push(_loc17_.y);
                                                                                                                                    if(_loc27_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc27_ || this)
                                                                                                                                       {
                                                                                                                                          addr834:
                                                                                                                                          §§push(_loc22_.x);
                                                                                                                                          if(_loc27_ || param3)
                                                                                                                                          {
                                                                                                                                             addr846:
                                                                                                                                             §§push(§§pop() * (§§pop() - _loc17_.x));
                                                                                                                                          }
                                                                                                                                          §§goto(addr846);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc27_ || this)
                                                                                                                                             {
                                                                                                                                                _loc25_ = §§pop();
                                                                                                                                                if(!(_loc28_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   if(_loc27_ || this)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr1005:
                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                   addr1004:
                                                                                                                                                   loop10:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr936:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                         §§push(_loc20_.x);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc25_);
                                                                                                                                                            if(_loc27_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc17_.x);
                                                                                                                                                               if(!(_loc28_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_.x);
                                                                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr979:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc22_.x);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr987:
                                                                                                                                                                        §§push(§§pop() / 3);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().x = §§pop() + §§pop();
                                                                                                                                                                     do
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                        §§push(_loc20_.y);
                                                                                                                                                                        if(_loc28_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc25_);
                                                                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_.y);
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc21_.y);
                                                                                                                                                                              if(!(_loc28_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr912:
                                                                                                                                                                                    §§push(§§pop() + _loc22_.y);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr918:
                                                                                                                                                                                    §§push(§§pop() + §§pop() / 3);
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr918);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr912);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr918);
                                                                                                                                                                     }
                                                                                                                                                                     while(§§pop().y = §§pop(), _loc28_ && param1);
                                                                                                                                                                     
                                                                                                                                                                     continue loop10;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr979);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr987);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr979);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1006:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1006);
                                                                                                                                             }
                                                                                                                                             addr1001:
                                                                                                                                             §§push(§§pop() + _loc25_);
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1004);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1005);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1001);
                                                                                                                                    }
                                                                                                                                    §§goto(addr846);
                                                                                                                                 }
                                                                                                                                 §§goto(addr834);
                                                                                                                              }
                                                                                                                              §§goto(addr1001);
                                                                                                                           }
                                                                                                                           §§goto(addr817);
                                                                                                                        }
                                                                                                                        §§goto(addr846);
                                                                                                                     }
                                                                                                                     §§goto(addr817);
                                                                                                                  }
                                                                                                                  §§goto(addr813);
                                                                                                               }
                                                                                                               §§goto(addr810);
                                                                                                            }
                                                                                                            §§goto(addr789);
                                                                                                         }
                                                                                                         §§goto(addr1005);
                                                                                                      }
                                                                                                      addr765:
                                                                                                   }
                                                                                                   §§goto(addr1005);
                                                                                                }
                                                                                                addr753:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1042);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc22_ = this.§%§[_loc12_];
                                                                                          }
                                                                                          §§goto(addr765);
                                                                                       }
                                                                                       addr1049:
                                                                                       return _loc19_;
                                                                                    }
                                                                                    §§goto(addr723);
                                                                                 }
                                                                                 §§goto(addr729);
                                                                                 §§goto(addr1042);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr753);
                                                                  }
                                                                  §§goto(addr1021);
                                                               }
                                                               §§goto(addr694);
                                                            }
                                                            §§goto(addr1030);
                                                         }
                                                         §§goto(addr636);
                                                      }
                                                      §§goto(addr598);
                                                   }
                                                   §§goto(addr587);
                                                }
                                                §§goto(addr558);
                                             }
                                             §§goto(addr534);
                                          }
                                          addr469:
                                          addr470:
                                          if(§§pop() === _loc26_)
                                          {
                                             addr471:
                                             §§push(1);
                                             if(!_loc28_)
                                             {
                                                addr474:
                                             }
                                          }
                                          §§goto(addr479);
                                          §§push(2);
                                       }
                                       §§goto(addr471);
                                    }
                                    §§push(1);
                                    if(!_loc28_)
                                    {
                                       §§goto(addr469);
                                    }
                                    §§goto(addr474);
                                 }
                                 §§goto(addr470);
                              }
                              §§goto(addr479);
                           }
                           §§goto(addr457);
                        }
                        §§goto(addr482);
                        addr294:
                     }
                     §§goto(addr367);
                     §§goto(addr297);
                  }
                  §§goto(addr429);
               }
               break;
            }
            addr344:
            return §§pop();
         }
         §§push(§§pop() + §§pop());
         if(!_loc28_)
         {
            §§push(§§pop() % this.§']§);
         }
         §§goto(addr367);
      }
      
      public function §;![§() : int
      {
         return this.§']§;
      }
      
      public function §&p§() : Vector.<b2Vec2>
      {
         return this.§%§;
      }
      
      public function §9Q§() : Vector.<b2Vec2>
      {
         return this.§<0§;
      }
      
      public function §3a§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§%§[0].y * param1.y);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() >= this.§']§)
               {
                  if(_loc7_)
                  {
                     addr62:
                     §§push(_loc2_);
                     if(_loc7_ || _loc2_)
                     {
                        break;
                     }
                     loop11:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr159:
                        addr82:
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              if(_loc7_ || this)
                              {
                                 addr101:
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                break loop2;
                                             }
                                          }
                                          addr108:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§%§[_loc4_].y * param1.y);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr143:
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
                                                         addr147:
                                                      }
                                                   }
                                                }
                                                addr142:
                                             }
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   break loop2;
                                                }
                                             }
                                          }
                                          addr131:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          continue loop11;
                                       }
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr101);
                           continue loop11;
                        }
                        while(true)
                        {
                           _loc4_++;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr108);
                     §§goto(addr82);
                  }
                  continue;
               }
               §§push(this.§%§[_loc4_].x * param1.x);
               §§goto(addr131);
            }
            §§goto(addr62);
         }
         return §§pop();
      }
      
      public function §55§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§%§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§%§[0].y * param1.y);
            if(_loc7_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(!(_loc6_ && _loc2_))
               {
                  if(§§pop() >= this.§']§)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        if(_loc7_ || _loc2_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              addr173:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr174:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                           addr172:
                        }
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              if(_loc7_ || param1)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr118:
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || param1)
                                    {
                                       _loc3_ = §§pop();
                                       addr126:
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          _loc5_ = §§pop();
                                          addr170:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                          }
                                          addr170:
                                       }
                                    }
                                    addr161:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§%§[_loc4_].y * param1.y);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc7_)
                                          {
                                             §§goto(addr161);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                    addr147:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr172);
                                 }
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr118);
                        }
                        _loc4_++;
                        continue;
                     }
                     §§goto(addr126);
                  }
                  else
                  {
                     §§push(this.§%§[_loc4_].x * param1.x);
                  }
                  §§goto(addr147);
               }
               §§goto(addr173);
            }
            §§goto(addr174);
         }
         return this.§%§[_loc2_];
      }
      
      private function §<!3§() : Boolean
      {
         return false;
      }
      
      private function §[!'§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     addr89:
                     while(true)
                     {
                        this.§<0§[_loc2_] = new b2Vec2();
                        continue loop1;
                     }
                  }
               }
               while(_loc4_ && param1)
               {
               }
               continue;
            }
            this.§%§[_loc2_] = new b2Vec2();
            §§goto(addr89);
         }
      }
   }
}
