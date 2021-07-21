package §"!9§
{
   import §+S§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §;!'§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;!'§ = new b2Mat22();
         }
      }
      
      b2internal var §@"0§:b2Vec2;
      
      b2internal var §"!@§:Vector.<b2Vec2>;
      
      b2internal var §8!o§:Vector.<b2Vec2>;
      
      b2internal var §2!7§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §="1§ = b2internal::4A;
            while(true)
            {
               this.§@"0§ = new b2Vec2();
               while(_loc2_)
               {
                  this.§"!@§ = new Vector.<b2Vec2>();
                  while(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        this.§8!o§ = new Vector.<b2Vec2>();
                        while(!_loc1_)
                        {
                           §;$§ = b2Settings.b2_polygonRadius;
                           do
                           {
                              this.§@"0§.§@!s§();
                           }
                           while(_loc1_);
                           
                           if(_loc2_)
                           {
                              return;
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
      
      public static function §3!0§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && b2PolygonShape))
         {
            _loc3_.§7o§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §0"3§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§,"2§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §;!P§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§[!,§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §4!K§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§9N§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §<g§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§&w§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §4!6§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         if(!(_loc18_ && param2))
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
         if(_loc17_ || b2PolygonShape)
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
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc18_)
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
                                       while(true)
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
                                                while(_loc17_)
                                                {
                                                   §§push(_loc5_);
                                                   loop12:
                                                   for(; _loc17_ || param1; while(!(_loc18_ && b2PolygonShape))
                                                   {
                                                      §§goto(addr332);
                                                      §§push(§§pop() - §§pop());
                                                   })
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
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc10_.y);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr348:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     addr349:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  addr267:
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     §§push(_loc15_);
                                                                     loop28:
                                                                     for(; !_loc18_; §§push(_loc16_),if(_loc18_ && param1)
                                                                     {
                                                                        continue;
                                                                     },§§push(§§pop() + §§pop()),if(!_loc18_)
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr243);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        while(_loc17_)
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           §§goto(addr291);
                                                                        }
                                                                        while(_loc17_ || _loc3_)
                                                                        {
                                                                           §§goto(addr340);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        continue loop4;
                                                                        addr332:
                                                                        addr288:
                                                                     },§§goto(addr243))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        while(!_loc18_)
                                                                        {
                                                                           continue loop1;
                                                                           addr243:
                                                                           if(_loc18_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr250:
                                                                           if(_loc17_ || _loc3_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              loop32:
                                                                              while(_loc17_)
                                                                              {
                                                                                 _loc3_.§1v§(new b2Vec2(_loc5_,_loc6_));
                                                                                 loop33:
                                                                                 while(_loc17_ || _loc3_)
                                                                                 {
                                                                                    _loc3_.§1v§(_loc9_);
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_.§1v§(_loc10_);
                                                                                       loop35:
                                                                                       for(; !_loc18_; while(_loc17_ || _loc3_)
                                                                                       {
                                                                                          continue loop34;
                                                                                          _loc8_++;
                                                                                          if(!(_loc18_ && b2PolygonShape))
                                                                                          {
                                                                                             continue loop32;
                                                                                          }
                                                                                       })
                                                                                       {
                                                                                          addr172:
                                                                                          if(_loc18_ && param2)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   if(!(_loc18_ && param1))
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr243);
                                                                                                }
                                                                                                §§goto(addr349);
                                                                                                §§goto(addr172);
                                                                                             }
                                                                                             continue loop11;
                                                                                             addr291:
                                                                                          }
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             do
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                §§push(_loc16_);
                                                                                                if(!(_loc18_ && b2PolygonShape))
                                                                                                {
                                                                                                   §§push(§§pop() * _loc7_);
                                                                                                }
                                                                                                §§pop().§>!t§(§§pop());
                                                                                                continue loop35;
                                                                                             }
                                                                                             while(false);
                                                                                             
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       continue loop33;
                                                                                       if(!(_loc17_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr165);
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                                 if(_loc18_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc17_ || param2))
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr136);
                                                                              }
                                                                              while(_loc17_)
                                                                              {
                                                                                 §§push(0.5);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(!(_loc17_ || param1))
                                                                                          {
                                                                                             break loop28;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * _loc13_);
                                                                                             break loop28;
                                                                                          }
                                                                                       }
                                                                                       addr314:
                                                                                    }
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                              }
                                                                              addr341:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(_loc14_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(_loc18_ && param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc17_ || param2))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§goto(addr314);
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§goto(addr322);
                                                                              §§goto(addr250);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           §§goto(addr341);
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop7;
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
               §§goto(addr181);
            }
            §§goto(addr95);
         }
         if(!(_loc18_ && param2))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc18_ && b2PolygonShape))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!_loc18_)
            {
               addr427:
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
         §§goto(addr427);
      }
      
      b2internal static function §;§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc21_:Number = NaN;
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
               if(_loc26_)
               {
                  _loc5_[param3] = _loc5_[0];
               }
               if(_loc26_ || param3)
               {
                  if(!_loc27_)
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
               }
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr105);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(_loc26_ || param3)
         {
            §§push(1);
            if(_loc26_)
            {
               _loc4_ = §§pop();
               if(!_loc27_)
               {
                  addr126:
                  loop87:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1208:
                     while(§§pop() <= param3)
                     {
                        _loc7_ = _loc5_[int(_loc4_ - 1)];
                        if(!(_loc27_ && param3))
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
                                                                     addr912:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        addr913:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr914:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr915:
                                                                              while(true)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr859:
                                                                     if(_loc27_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop37:
                                                                           while(true)
                                                                           {
                                                                              _loc17_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 loop39:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc17_);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop() >= param3)
                                                                                    {
                                                                                       if(!(_loc27_ && b2PolygonShape))
                                                                                       {
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§push(_loc15_);
                                                                                             loop40:
                                                                                             for(; _loc26_; while(true)
                                                                                             {
                                                                                                if(!(_loc26_ || param3))
                                                                                                {
                                                                                                   continue loop40;
                                                                                                }
                                                                                                §§goto(addr266);
                                                                                                §§push(Number(§§pop()));
                                                                                             },§§goto(addr430))
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                loop41:
                                                                                                while(_loc26_ || param1)
                                                                                                {
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      if(_loc26_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc26_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc16_);
                                                                                                            if(!(_loc27_ && b2PolygonShape))
                                                                                                            {
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               §§push(_loc14_);
                                                                                                               if(!(_loc27_ && param3))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc26_ || param2)
                                                                                                                  {
                                                                                                                     addr614:
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        loop42:
                                                                                                                        while(_loc26_)
                                                                                                                        {
                                                                                                                           if(_loc26_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          if(_loc26_ || b2PolygonShape)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop43:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                addr517:
                                                                                                                                                loop50:
                                                                                                                                                while(_loc26_ || b2PolygonShape)
                                                                                                                                                {
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   §§push(0.95);
                                                                                                                                                   if(!(_loc27_ && param3))
                                                                                                                                                   {
                                                                                                                                                      loop49:
                                                                                                                                                      while(_loc26_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            loop48:
                                                                                                                                                            while(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop44:
                                                                                                                                                               while(!(_loc27_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     loop45:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                        loop46:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc26_ || param3))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop13;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop47:
                                                                                                                                                                              for(; _loc26_; while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop47;
                                                                                                                                                                              },§§goto(addr762))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.R);
                                                                                                                                                                                          loop65:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().col1);
                                                                                                                                                                                             loop66:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                loop67:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   addr401:
                                                                                                                                                                                                   loop68:
                                                                                                                                                                                                   while(_loc26_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1.R);
                                                                                                                                                                                                      loop69:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().col1);
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop67;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         while(!(_loc27_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1.R);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop65;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop69;
                                                                                                                                                                                                                  addr323:
                                                                                                                                                                                                                  if(_loc27_ && param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().col2);
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                     if(!(_loc26_ || param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           addr367:
                                                                                                                                                                                                                           while(!(_loc27_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.R);
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr323);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr972:
                                                                                                                                                                                                                                 _loc25_ = §§pop();
                                                                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1173:
                                                                                                                                                                                                                                    §§push(param1.center);
                                                                                                                                                                                                                                    §§push(_loc7_.x);
                                                                                                                                                                                                                                    §§push(_loc25_.col1.x);
                                                                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1203:
                                                                                                                                                                                                                                       addr1204:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1202:
                                                                                                                                                                                                                                          §§push(§§pop() + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                                       addr1205:
                                                                                                                                                                                                                                       §§push(param1.center);
                                                                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                                                                                                                          if(_loc26_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc25_.col1);
                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                         if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1121:
                                                                                                                                                                                                                                                               §§push(_loc25_.col2);
                                                                                                                                                                                                                                                               if(_loc26_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1138:
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1144:
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1152:
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1160:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                    addr1043:
                                                                                                                                                                                                                                                                                    addr1058:
                                                                                                                                                                                                                                                                                    addr1046:
                                                                                                                                                                                                                                                                                    §§push(param1.§;"0§);
                                                                                                                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1055:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * (_loc15_ - _loc13_));
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                    addr1168:
                                                                                                                                                                                                                                                                                    addr1059:
                                                                                                                                                                                                                                                                                    §§push(param1.§;"0§);
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(0.5);
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1021:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1024:
                                                                                                                                                                                                                                                                                                         §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                         if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1043);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1206:
                                                                                                                                                                                                                                                                                                                  _loc4_++;
                                                                                                                                                                                                                                                                                                                  continue loop87;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1205);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1168);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1059);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1055);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1021);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1058);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1024);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1046);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1173);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1203);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1202);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1144);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1202);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1152);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1138);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1173);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1121);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1173);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1204);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1160);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1173);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1202);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1043);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop36;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr366:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     continue loop45;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr366);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop65;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr715:
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc26_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     break loop50;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop22:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                                                                     loop23:
                                                                                                                                                                                                                     while(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           break loop47;
                                                                                                                                                                                                                           addr833:
                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                                                                              while(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc20_ = _loc5_[_loc17_].y - _loc7_.y;
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                             break loop44;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr914);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                                                                             addr889:
                                                                                                                                                                                                                                             while(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                                                                                                                   addr883:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                                                                      addr873:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         addr874:
                                                                                                                                                                                                                                                         while(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                                                                               addr852:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc26_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr859);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop22;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr924:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop50;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr888:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr779:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr789:
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                             break loop48;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr873);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                              addr841:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop9;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr664:
                                                                                                                                                                                                                  if(_loc27_ && param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop2;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                                                                     break loop68;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop62:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                     addr763:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr713:
                                                                                                                                                                                                                        if(_loc21_ < _loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr715);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop42;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop5;
                                                                                                                                                                                                                              addr791:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr685:
                                                                                                                                                                                                                           addr792:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr873);
                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop14;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr841);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc26_ || param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop14;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr685);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop66;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc26_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr611:
                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                      break loop40;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr877);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr659:
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr664);
                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr690:
                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr693:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr792);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr874);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr762);
                                                                                                                                                                                          addr689:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(_loc26_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr655:
                                                                                                                                                                                             break loop41;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr653);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr689);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr653:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr883);
                                                                                                                                                                                       addr703:
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr310:
                                                                                                                                                                                    if(!(_loc26_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop43;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr171:
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   if(_loc26_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop48;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr184:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc26_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop44;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr201:
                                                                                                                                                                                                               if(_loc27_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(_loc26_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc26_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_ && b2PolygonShape)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr744:
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                              if(_loc26_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr755:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                 break loop49;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break loop49;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop3;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                                                                           if(_loc27_ && param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop87;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc26_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr310);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr401);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr385);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr367);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr819);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr690);
                                                                                                                                                                                                                     §§goto(addr201);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop46;
                                                                                                                                                                                                                  addr266:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc26_ || param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop40;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop47;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop42;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                                                                               if(_loc27_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop87;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                                                                     continue loop47;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr234:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr972);
                                                                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr655);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            continue loop40;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr257:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr759:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr762);
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr779);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr257);
                                                                                                                                                                                                      §§goto(addr171);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr256:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr912);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr184);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr693);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr637:
                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                       if(!(_loc26_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop87;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr601:
                                                                                                                                                                                          _loc17_++;
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr889);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr201);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr763);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(!(_loc27_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr888);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr913);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr759);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop10;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1206);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr779);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr549:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr791);
                                                                                                                                                      }
                                                                                                                                                      addr756:
                                                                                                                                                      §§goto(addr757);
                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                      addr534:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr552);
                                                                                                                                                }
                                                                                                                                                if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                {
                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                   §§goto(addr734);
                                                                                                                                                }
                                                                                                                                                §§goto(addr882);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr755);
                                                                                                                                          }
                                                                                                                                          §§goto(addr756);
                                                                                                                                       }
                                                                                                                                       §§goto(addr664);
                                                                                                                                    }
                                                                                                                                    §§goto(addr517);
                                                                                                                                 }
                                                                                                                                 §§goto(addr833);
                                                                                                                              }
                                                                                                                              §§goto(addr820);
                                                                                                                           }
                                                                                                                           §§goto(addr713);
                                                                                                                        }
                                                                                                                        §§goto(addr688);
                                                                                                                        §§push(_loc14_);
                                                                                                                     }
                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc26_ || param2))
                                                                                                                           {
                                                                                                                              continue loop87;
                                                                                                                           }
                                                                                                                           §§push(_loc22_);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr637);
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr852);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr833);
                                                                                                                              }
                                                                                                                              §§goto(addr899);
                                                                                                                              addr832:
                                                                                                                           }
                                                                                                                           §§goto(addr637);
                                                                                                                        }
                                                                                                                        §§goto(addr601);
                                                                                                                     }
                                                                                                                     §§goto(addr758);
                                                                                                                  }
                                                                                                                  §§goto(addr552);
                                                                                                               }
                                                                                                               §§goto(addr549);
                                                                                                            }
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                         §§goto(addr517);
                                                                                                      }
                                                                                                      §§goto(addr915);
                                                                                                   }
                                                                                                   §§goto(addr713);
                                                                                                }
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      §§goto(addr659);
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                                §§goto(addr688);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr614);
                                                                                                §§goto(addr611);
                                                                                             }
                                                                                             §§goto(addr852);
                                                                                          }
                                                                                          §§goto(addr908);
                                                                                       }
                                                                                       §§goto(addr576);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                    }
                                                                                    §§goto(addr832);
                                                                                 }
                                                                                 continue loop37;
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
                        §§goto(addr821);
                        continue loop87;
                     }
                  }
               }
               return;
            }
            §§goto(addr1208);
         }
         §§goto(addr126);
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            super.Set(param1);
            if(!(_loc5_ && this))
            {
               §§goto(addr33);
            }
            §§goto(addr37);
         }
         addr33:
         if(param1 is b2PolygonShape)
         {
            addr37:
            _loc2_ = param1 as b2PolygonShape;
            if(_loc4_)
            {
               this.§@"0§.SetV(_loc2_.§@"0§);
            }
            loop0:
            while(true)
            {
               this.§2!7§ = _loc2_.§2!7§;
               while(true)
               {
                  this.§,>§(this.§2!7§);
                  while(!(_loc5_ && param1))
                  {
                     if(_loc4_)
                     {
                        _loc3_ = 0;
                        if(_loc4_)
                        {
                           addr137:
                           if(_loc3_ < this.§2!7§)
                           {
                              this.§"!@§[_loc3_].SetV(_loc2_.§"!@§[_loc3_]);
                              if(!_loc5_)
                              {
                                 this.§8!o§[_loc3_].SetV(_loc2_.§8!o§[_loc3_]);
                                 _loc3_++;
                                 addr58:
                                 addr78:
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr58);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr78);
                                 }
                              }
                           }
                           §§goto(addr141);
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         addr141:
      }
      
      public function §7o§(param1:Array, param2:Number = 0) : void
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
         if(!_loc8_)
         {
            this.§,"2§(_loc3_,param2);
         }
      }
      
      public function §,"2§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop() == 0)
               {
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
               loop1:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  addr226:
                  loop4:
                  while(true)
                  {
                     this.§2!7§ = param2;
                     while(true)
                     {
                        this.§,>§(param2);
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              if(!(_loc7_ || param2))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        continue loop1;
                        if(_loc8_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           break loop4;
                        }
                        §§goto(addr232);
                     }
                  }
                  loop7:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop8:
                     while(true)
                     {
                        §§push(this.§2!7§);
                        if(_loc7_)
                        {
                           if(§§pop() < §§pop())
                           {
                              this.§"!@§[_loc3_].SetV(param1[_loc3_]);
                              break;
                           }
                           while(true)
                           {
                              §§push(0);
                              loop10:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc7_ || this)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             §§push(this.§2!7§);
                                             addr296:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      this.§@"0§ = §4!6§(this.§"!@§,this.§2!7§);
                                                      break loop10;
                                                   }
                                                   break loop10;
                                                }
                                                §§push(_loc3_);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop16:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr141:
                                                      addr128:
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue loop7;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      _loc5_ = §§pop();
                                                      if(_loc8_)
                                                      {
                                                         break loop10;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop11;
                                                      }
                                                      _loc6_ = b2Math.§'!%§(this.§"!@§[_loc5_],this.§"!@§[_loc4_]);
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         b2Settings.b2Assert(_loc6_.§%"§() > Number.MIN_VALUE);
                                                         this.§8!o§[_loc3_].SetV(b2Math.§+Z§(_loc6_,1));
                                                         addr267:
                                                         this.§8!o§[_loc3_].Normalize();
                                                         _loc3_++;
                                                         addr292:
                                                         addr284:
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr265:
                                                                  if(true)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         addr273:
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 break;
                              }
                              return;
                              if(_loc7_ || _loc3_)
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(1);
                                       if(_loc7_)
                                       {
                                          §§goto(addr105);
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr109);
                                 }
                                 break loop8;
                              }
                           }
                        }
                        §§goto(addr296);
                     }
                     _loc3_++;
                  }
               }
            }
            §§goto(addr235);
         }
         §§goto(addr226);
      }
      
      public function §[!,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§2!7§ = 4;
            while(true)
            {
               this.§,>§(4);
            }
            addr183:
         }
         loop1:
         while(true)
         {
            this.§"!@§[0].Set(-param1,-param2);
            loop2:
            while(true)
            {
               this.§"!@§[1].Set(param1,-param2);
               loop3:
               while(true)
               {
                  this.§"!@§[2].Set(param1,param2);
                  loop4:
                  while(true)
                  {
                     this.§"!@§[3].Set(-param1,param2);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr106:
                        while(!(_loc3_ && this))
                        {
                           if(!_loc3_)
                           {
                              this.§8!o§[1].Set(1,0);
                              continue loop3;
                           }
                           §§goto(addr183);
                           loop8:
                           while(!(_loc3_ && _loc3_))
                           {
                              this.§8!o§[3].Set(-1,0);
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop8;
                              }
                              continue loop4;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §9N§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            this.§2!7§ = 4;
         }
         loop0:
         while(true)
         {
            this.§,>§(4);
            loop1:
            while(true)
            {
               this.§"!@§[0].Set(-param1,-param2);
               loop2:
               while(true)
               {
                  this.§"!@§[1].Set(param1,-param2);
                  loop3:
                  while(true)
                  {
                     this.§"!@§[2].Set(param1,param2);
                     while(true)
                     {
                        this.§"!@§[3].Set(-param1,param2);
                        loop5:
                        while(!_loc8_)
                        {
                           if(!_loc7_)
                           {
                              continue loop1;
                           }
                           this.§8!o§[0].Set(0,-1);
                           while(true)
                           {
                              this.§8!o§[1].Set(1,0);
                              loop7:
                              while(!_loc8_)
                              {
                                 this.§8!o§[2].Set(0,1);
                                 while(true)
                                 {
                                    if(!(_loc8_ && param2))
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue loop7;
                                 }
                                 continue loop5;
                              }
                              continue loop2;
                              addr30:
                              if(_loc8_ && param2)
                              {
                                 continue;
                              }
                              addr37:
                              if(!_loc7_)
                              {
                                 continue loop3;
                              }
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§8!o§[3].Set(-1,0);
                                    while(!_loc8_)
                                    {
                                       this.§@"0§ = param3;
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr30);
                                    }
                                    §§goto(addr60);
                                    §§goto(addr37);
                                 }
                                 continue loop3;
                                 addr41:
                              }
                              var _loc5_:b2Transform;
                              (_loc5_ = new b2Transform()).position = param3;
                              if(_loc7_)
                              {
                                 _loc5_.R.Set(param4);
                              }
                              var _loc6_:int = 0;
                              addr176:
                              if(_loc6_ >= this.§2!7§)
                              {
                                 if(_loc7_ || this)
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       if(!(_loc7_ || param2))
                                       {
                                          this.§8!o§[_loc6_] = b2Math.§0b§(_loc5_.R,this.§8!o§[_loc6_]);
                                          _loc6_++;
                                          addr207:
                                          §§goto(addr176);
                                          addr221:
                                          addr245:
                                       }
                                       return;
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr207);
                              }
                              this.§"!@§[_loc6_] = b2Math.§>!C§(_loc5_,this.§"!@§[_loc6_]);
                              §§goto(addr245);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §&w§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§2!7§ = 2;
            loop0:
            while(true)
            {
               this.§,>§(2);
               loop1:
               while(true)
               {
                  this.§"!@§[0].SetV(param1);
                  loop2:
                  for(; !_loc3_; while(!(_loc3_ && this))
                  {
                  })
                  {
                     this.§"!@§[1].SetV(param2);
                     while(true)
                     {
                        §§push(this.§@"0§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           if(!(_loc3_ && param1))
                           {
                              §§push(param1.x);
                              while(true)
                              {
                                 §§push(param2.x);
                                 addr165:
                                 addr124:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr166:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 addr124:
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    §§pop().y = §§pop();
                                    while(_loc4_ || param1)
                                    {
                                       continue loop1;
                                    }
                                    continue loop2;
                                    addr135:
                                 }
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop2;
                                 }
                                 addr167:
                              }
                           }
                           §§goto(addr167);
                           addr175:
                           while(true)
                           {
                              §§push(this.§@"0§);
                              if(!_loc4_)
                              {
                                 continue loop4;
                              }
                              §§push(0.5);
                              if(!_loc3_)
                              {
                                 §§push(param1.y);
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(param2.y);
                                       if(!(_loc3_ && param2))
                                       {
                                          §§goto(addr124);
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr132);
                           }
                        }
                        addr82:
                        loop12:
                        while(!(_loc3_ && param1))
                        {
                           this.§8!o§[0].Normalize();
                           loop13:
                           do
                           {
                              this.§8!o§[1].x = -this.§8!o§[0].x;
                              while(!_loc3_)
                              {
                                 this.§8!o§[1].y = -this.§8!o§[0].y;
                                 if(_loc4_)
                                 {
                                    continue loop13;
                                 }
                              }
                              continue loop12;
                           }
                           while(_loc3_ && param2);
                           
                           if(_loc4_)
                           {
                              return;
                           }
                           §§goto(addr135);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr175);
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
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(!_loc11_)
         {
            §§push(§§pop() - param1.position.y);
            if(!_loc11_)
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(!(_loc11_ && param1))
            {
               §§push(_loc4_.col1.x);
               if(!_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     addr71:
                     §§push(_loc6_);
                     if(!(_loc11_ && param1))
                     {
                        addr83:
                        §§push(§§pop() + §§pop() * _loc4_.col1.y);
                        if(!(_loc11_ && _loc3_))
                        {
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
                     if(!(_loc11_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc11_ && _loc3_))
                        {
                           §§goto(addr114);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr117);
                  }
                  addr114:
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     addr117:
                     §§push(§§pop() * _loc4_.col2.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc12_)
                  {
                     addr124:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  var _loc9_:int = 0;
                  while(true)
                  {
                     if(_loc9_ >= this.§2!7§)
                     {
                        return true;
                     }
                     _loc3_ = this.§"!@§[_loc9_];
                     if(!(_loc11_ && param1))
                     {
                        §§push(_loc7_);
                        if(!(_loc11_ && this))
                        {
                           §§push(_loc3_.x);
                           if(!_loc11_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc12_ || _loc3_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!(_loc11_ && param1))
                                    {
                                       §§push(_loc8_);
                                       if(_loc12_)
                                       {
                                          addr189:
                                          addr187:
                                          §§push(§§pop() - _loc3_.y);
                                          if(_loc11_)
                                          {
                                          }
                                          addr193:
                                          _loc6_ = §§pop();
                                          _loc3_ = this.§8!o§[_loc9_];
                                          if(_loc11_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc3_.x);
                                          if(!(_loc11_ && param1))
                                          {
                                             §§push(_loc5_);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc12_ || _loc3_)
                                                {
                                                   §§push(_loc3_.y);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      §§push(§§pop() * _loc6_);
                                                      if(!_loc11_)
                                                      {
                                                         addr240:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_)
                                                         {
                                                            addr243:
                                                            §§push(Number(§§pop()));
                                                            if(_loc12_ || this)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc12_ || this)
                                                               {
                                                               }
                                                               addr261:
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc9_++;
                                                               continue;
                                                            }
                                                            addr260:
                                                            §§goto(addr261);
                                                            §§push(0);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      _loc10_ = §§pop();
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr243);
                                       }
                                    }
                                    §§goto(addr193);
                                 }
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr189);
                  }
                  return false;
               }
               §§goto(addr83);
            }
            §§goto(addr71);
         }
         §§goto(addr53);
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
         if(!(_loc21_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§8"!§);
         if(!(_loc21_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc20_)
         {
            §§push(param2.p1);
            if(!_loc21_)
            {
               §§push(§§pop().x);
               if(!(_loc21_ && param3))
               {
                  §§push(param3.position);
                  if(_loc20_)
                  {
                     §§push(§§pop().x);
                     if(!_loc21_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc21_)
                        {
                           addr75:
                           §§push(Number(§§pop()));
                           if(!_loc21_)
                           {
                              _loc6_ = §§pop();
                              if(_loc20_)
                              {
                                 addr83:
                                 §§push(param2.p1.y);
                                 if(_loc20_)
                                 {
                                    addr86:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc21_ && this))
                                    {
                                       addr97:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                                 addr99:
                                 _loc8_ = param3.R;
                                 §§push(_loc6_);
                                 if(!_loc21_)
                                 {
                                    §§push(_loc8_.col1.x);
                                    if(_loc20_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc21_ && param3))
                                       {
                                          addr119:
                                          §§push(_loc7_);
                                          if(_loc20_)
                                          {
                                             addr126:
                                             §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                             if(!(_loc21_ && param3))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr126);
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(_loc6_);
                                       if(_loc20_)
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(_loc20_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc21_)
                                             {
                                                §§push(_loc7_);
                                                if(!_loc21_)
                                                {
                                                   addr150:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc20_ || param2)
                                                {
                                                   addr163:
                                                   var _loc11_:Number = §§pop();
                                                   if(_loc20_)
                                                   {
                                                      §§push(param2.p2);
                                                      if(_loc20_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc21_ && param2))
                                                         {
                                                            §§push(param3.position);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc21_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc21_ && param3))
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(!(_loc21_ && param2))
                                                                        {
                                                                           addr211:
                                                                           §§push(param2.p2.y);
                                                                           if(_loc20_)
                                                                           {
                                                                              addr214:
                                                                              addr217:
                                                                              addr216:
                                                                              §§push(§§pop() - param3.position.y);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 addr220:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              addr222:
                                                                              _loc8_ = param3.R;
                                                                              §§push(_loc6_);
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 §§push(_loc8_.col1.x);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    addr262:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc21_ && param1))
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc8_.col1.y);
                                                                                       }
                                                                                    }
                                                                                    var _loc12_:Number = §§pop();
                                                                                    §§push(_loc6_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(_loc8_.col2.x);
                                                                                       if(_loc20_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc21_ && param2))
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr292:
                                                                                                §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                }
                                                                                                addr301:
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
                                                                                                if(_loc20_)
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
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   if(!(_loc21_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§2!7§);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            addr834:
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               break;
                                                                                                            }
                                                                                                            param1.fraction = _loc4_;
                                                                                                            _loc8_ = param3.R;
                                                                                                            _loc9_ = this.§8!o§[_loc16_];
                                                                                                            if(!(_loc21_ && this))
                                                                                                            {
                                                                                                               §§push(param1.normal);
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col1);
                                                                                                                  addr950:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc20_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.x);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        addr960:
                                                                                                                     }
                                                                                                                     addr961:
                                                                                                                     loop45:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        addr963:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc20_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr922:
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 if(!(_loc20_ || param3))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    if(!(_loc21_ && param2))
                                                                                                                                    {
                                                                                                                                       return true;
                                                                                                                                       addr945:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                    }
                                                                                                                                    addr985:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop42;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr984:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr985);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr948:
                                                                                                            }
                                                                                                            else if(true)
                                                                                                            {
                                                                                                               §§goto(addr987);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.normal);
                                                                                                               if(_loc20_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col1);
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc9_.x);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc20_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_.col2);
                                                                                                                                 if(_loc20_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!(_loc21_ && param1))
                                                                                                                                    {
                                                                                                                                       if(_loc20_ || param2)
                                                                                                                                       {
                                                                                                                                          §§goto(addr922);
                                                                                                                                       }
                                                                                                                                       §§goto(addr984);
                                                                                                                                    }
                                                                                                                                    §§goto(addr932);
                                                                                                                                 }
                                                                                                                                 §§goto(addr963);
                                                                                                                              }
                                                                                                                              §§goto(addr932);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr960);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr932);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr950);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr948);
                                                                                                               }
                                                                                                               §§goto(addr950);
                                                                                                               §§goto(addr986);
                                                                                                            }
                                                                                                            §§goto(addr945);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push((_loc9_ = this.§"!@§[_loc17_]).x);
                                                                                                            if(_loc20_ || param3)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc20_ || param1)
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr377:
                                                                                                                              §§push(§§pop() - _loc11_);
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 addr382:
                                                                                                                                 _loc7_ = Number(§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr382);
                                                                                                                        }
                                                                                                                        §§push((_loc9_ = this.§8!o§[_loc17_]).x);
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc21_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!(_loc21_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc20_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.x);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr784:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_.y);
                                                                                                                                                            loop5:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop7:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc20_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr798:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr797:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        loop11:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc21_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr809:
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    break loop11;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr809:
                                                                                                                                                                              }
                                                                                                                                                                              addr813:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr452:
                                                                                                                                                                                 loop4:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc21_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc20_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc21_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc20_ || param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!(_loc20_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop5;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr517:
                                                                                                                                                                                                   §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               do
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc17_++;
                                                                                                                                                                                                                  if(!(_loc20_ || param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc21_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop4;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(_loc20_);
                                                                                                                                                                                                               
                                                                                                                                                                                                               addr669:
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc21_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(false);
                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc21_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc21_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop21:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop18:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          addr750:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc4_ = Number(§§pop() / §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc20_ || param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop11;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                      addr776:
                                                                                                                                                                                                                                                      loop19:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         addr777:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop19;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr737:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr768:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                 if(!(_loc21_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                                                                 addr719:
                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr811:
                                                                                                                                                                                                                                 addr812:
                                                                                                                                                                                                                                 return false;
                                                                                                                                                                                                                                 addr762:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                 loop15:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    addr675:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       if(!(_loc21_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(!(_loc21_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr692:
                                                                                                                                                                                                                                                while(_loc20_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop15;
                                                                                                                                                                                                                                                addr692:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop16:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr643:
                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                        if(_loc20_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr666:
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr669);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr809);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr761);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr666);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr729);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr643:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr767:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr768);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr767:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr635:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr762);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr635);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr813);
                                                                                                                                                                                                                                                   addr619:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr778);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr719);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                   if(_loc20_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr635);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr719);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr777);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr692);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr776);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr812);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr692);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr619);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr779);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr628);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr727);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr750);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr675);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr643);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr517);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr761);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr635);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr666);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr763:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr767);
                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr767);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr763);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr811);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr452);
                                                                                                                                                   §§goto(addr443);
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr595);
                                                                                                                                          }
                                                                                                                                          §§goto(addr809);
                                                                                                                                       }
                                                                                                                                       §§goto(addr727);
                                                                                                                                    }
                                                                                                                                    §§goto(addr608);
                                                                                                                                 }
                                                                                                                                 §§goto(addr775);
                                                                                                                              }
                                                                                                                              §§goto(addr784);
                                                                                                                           }
                                                                                                                           §§goto(addr727);
                                                                                                                        }
                                                                                                                        §§goto(addr767);
                                                                                                                     }
                                                                                                                     §§goto(addr377);
                                                                                                                  }
                                                                                                                  §§goto(addr382);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr377);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr831);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr831:
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr834);
                                                                                                }
                                                                                                addr987:
                                                                                                return false;
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc21_ && param2)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr214);
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr99);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr75);
            }
         }
         §§goto(addr83);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§"!@§[0];
         §§push(param2.position.x);
         if(_loc13_ || _loc3_)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc12_ && param1))
            {
               §§push(_loc4_.x);
               if(_loc13_)
               {
                  addr72:
                  §§push(§§pop() * §§pop());
                  if(_loc13_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!(_loc12_ && param2))
                     {
                        §§push(§§pop() * _loc4_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc13_ || param1)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!_loc12_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc13_ || param2)
                     {
                        §§push(_loc4_.x);
                        if(_loc13_ || this)
                        {
                           addr123:
                           §§push(§§pop() * §§pop());
                           if(!(_loc12_ && param2))
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc13_)
                              {
                                 §§push(§§pop() * _loc4_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc13_)
                           {
                              addr127:
                              var _loc6_:* = Number(§§pop());
                              §§push(_loc5_);
                              if(!(_loc12_ && param1))
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
                              while(_loc9_ < this.§2!7§)
                              {
                                 _loc4_ = this.§"!@§[_loc9_];
                                 if(!(_loc12_ && param2))
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr499:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          addr501:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr502:
                                             loop4:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc13_ || param1)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr515:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.y);
                                                            addr517:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr518:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                         }
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            if(!(_loc13_ || _loc3_))
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(§§pop().y);
                                                            if(!_loc12_)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(_loc4_.y);
                                                               if(!_loc13_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr493:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           addr495:
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              while(!_loc12_)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 continue loop15;
                                                                                 addr252:
                                                                                 if(!(_loc13_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc12_ && param2))
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       addr269:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc12_ && this))
                                                                                       {
                                                                                          if(_loc13_ || this)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             do
                                                                                             {
                                                                                                _loc9_++;
                                                                                             }
                                                                                             while(_loc12_ && this);
                                                                                             
                                                                                             addr285:
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc13_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     if(_loc12_ && param1)
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr202:
                                                                                                                        if(!(_loc12_ && this))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 if(!(_loc12_ && this))
                                                                                                                                 {
                                                                                                                                    if(!(_loc12_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc12_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc13_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr269);
                                                                                                                                                   }
                                                                                                                                                   loop34:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr332:
                                                                                                                                                      loop35:
                                                                                                                                                      while(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         loop40:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr340:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc12_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                     addr350:
                                                                                                                                                                     loop36:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop37;
                                                                                                                                                                        }
                                                                                                                                                                        addr367:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           break loop36;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr350:
                                                                                                                                                                  }
                                                                                                                                                                  loop43:
                                                                                                                                                                  while(!_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr383:
                                                                                                                                                                        loop29:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr384:
                                                                                                                                                                           loop30:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc6_ = §§pop();
                                                                                                                                                                              addr385:
                                                                                                                                                                              while(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(!(_loc13_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                    while(_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc13_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                                                                             while(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc12_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr350);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop37;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      continue loop40;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr336:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc12_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         break loop37;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr402:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   if(!_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      break loop43;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr320:
                                                                                                                                                                                             addr401:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                break loop35;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr519:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_.x);
                                                                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc13_ || param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr515);
                                                                                                                                                                                          addr453:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                    addr298:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    addr422:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr358:
                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                          while(_loc13_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                   if(!_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr367);
                                                                                                                                                                                                §§goto(addr202);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                          addr358:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr383:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr383);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr421);
                                                                                                                                                                  }
                                                                                                                                                                  addr420:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr384);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr521:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr252);
                                                                                                                                                }
                                                                                                                                                §§goto(addr269);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr420);
                                                                                                                                                }
                                                                                                                                                §§goto(addr521);
                                                                                                                                             }
                                                                                                                                             addr413:
                                                                                                                                          }
                                                                                                                                          §§goto(addr269);
                                                                                                                                       }
                                                                                                                                       §§goto(addr402);
                                                                                                                                    }
                                                                                                                                    §§goto(addr422);
                                                                                                                                 }
                                                                                                                                 §§goto(addr350);
                                                                                                                              }
                                                                                                                              §§goto(addr285);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 §§goto(addr252);
                                                                                                                              }
                                                                                                                              §§goto(addr269);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr366);
                                                                                                                     }
                                                                                                                     §§goto(addr320);
                                                                                                                  }
                                                                                                                  §§goto(addr358);
                                                                                                               }
                                                                                                               §§goto(addr298);
                                                                                                            }
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                         §§goto(addr340);
                                                                                                      }
                                                                                                      §§goto(addr269);
                                                                                                   }
                                                                                                   while(_loc13_ || this)
                                                                                                   {
                                                                                                      §§goto(addr413);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr385);
                                                                                          }
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr518);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr517);
                                                      }
                                                   }
                                                   §§goto(addr519);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr495);
                              }
                              if(_loc13_ || this)
                              {
                                 §§push(param1.§8! §);
                                 if(!_loc12_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc13_ || this)
                                    {
                                       §§push(§§pop() - b2internal::;$);
                                       if(_loc13_ || this)
                                       {
                                          addr555:
                                          §§pop().x = §§pop();
                                          if(_loc13_)
                                          {
                                             addr609:
                                             §§push(param1.§8! §);
                                             §§push(_loc6_);
                                             if(!(_loc12_ && this))
                                             {
                                                addr627:
                                                §§push(§§pop() - b2internal::;$);
                                             }
                                             §§pop().y = §§pop();
                                          }
                                          loop47:
                                          while(true)
                                          {
                                             §§push(param1.§;R§);
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr596:
                                                addr606:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop() + b2internal::;$;
                                                   continue loop47;
                                                }
                                                §§push(param1.§;R§);
                                                if(!(_loc13_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc8_);
                                                if(_loc13_ || param2)
                                                {
                                                   §§pop().y = §§pop() + b2internal::;$;
                                                   if(_loc13_ || this)
                                                   {
                                                      return;
                                                      addr591:
                                                   }
                                                   continue loop47;
                                                }
                                                §§goto(addr596);
                                             }
                                          }
                                       }
                                       §§goto(addr627);
                                    }
                                    §§goto(addr555);
                                 }
                                 §§goto(addr609);
                              }
                              §§goto(addr591);
                           }
                           §§goto(addr127);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr127);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr72);
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
         if(!(_loc28_ && this))
         {
            if(this.§2!7§ == 2)
            {
               while(true)
               {
                  §§push(param1.center);
                  addr134:
                  while(true)
                  {
                     §§push(0.5);
                     addr135:
                     while(true)
                     {
                        §§push(§§pop() * (this.§"!@§[0].x + this.§"!@§[1].x));
                        addr147:
                        while(true)
                        {
                           §§pop().x = §§pop();
                        }
                     }
                  }
               }
               addr132:
            }
            else
            {
               §§push(0);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!(_loc28_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc27_ || _loc3_)
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
               while(_loc10_ < this.§2!7§)
               {
                  _loc11_ = this.§"!@§[_loc10_];
                  if(_loc27_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§2!7§ ? this.§"!@§[int(_loc10_ + 1)] : this.§"!@§[0];
                     if(!(_loc28_ && param2))
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
                                          addr1158:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr1159:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr1160:
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   addr1161:
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      addr1149:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr1150:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr1151:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr1152:
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  addr1153:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
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
                        }
                     }
                     §§goto(addr1130);
                  }
                  §§goto(addr215);
               }
               if(!_loc28_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!_loc28_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§5d§ = §§pop();
                  if(!(_loc28_ && _loc3_))
                  {
                     §§push(_loc3_);
                     while(true)
                     {
                        §§push(1);
                        addr1273:
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1274:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1275:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr1276:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr1277:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        addr1232:
                        if(!(_loc27_ || this))
                        {
                           continue;
                        }
                        §§push(1);
                        if(!(_loc28_ && param1))
                        {
                           §§push(_loc5_);
                           if(_loc27_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!_loc28_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc28_)
                                 {
                                    addr1256:
                                    §§push(Number(§§pop()));
                                 }
                                 if(!_loc28_)
                                 {
                                    _loc4_ = §§pop();
                                    loop132:
                                    while(true)
                                    {
                                       param1.center.Set(_loc3_,_loc4_);
                                       while(!(_loc28_ && param1))
                                       {
                                          §§push(param1);
                                          §§push(param2);
                                          if(!(_loc28_ && this))
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().I = §§pop();
                                          if(_loc28_)
                                          {
                                             continue;
                                          }
                                          if(_loc27_)
                                          {
                                             break loop132;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc27_)
                                             {
                                                if(!_loc28_)
                                                {
                                                   §§goto(addr1232);
                                                }
                                                §§goto(addr1277);
                                             }
                                             §§goto(addr1256);
                                          }
                                          addr1278:
                                       }
                                    }
                                    return;
                                    addr1270:
                                 }
                                 §§goto(addr1276);
                              }
                              §§goto(addr1275);
                           }
                           §§goto(addr1274);
                        }
                        §§goto(addr1273);
                     }
                  }
                  §§goto(addr1278);
               }
               §§goto(addr1270);
            }
         }
         loop138:
         while(true)
         {
            §§push(param1.center);
            if(!_loc28_)
            {
               §§push(0.5);
               if(_loc27_)
               {
                  if(!_loc28_)
                  {
                     addr117:
                     §§push(§§pop() * (this.§"!@§[0].y + this.§"!@§[1].y));
                     if(_loc27_ || _loc3_)
                     {
                        §§pop().y = §§pop();
                        while(!_loc28_)
                        {
                           param1.§5d§ = 0;
                           if(!(_loc28_ && _loc3_))
                           {
                              param1.I = 0;
                              if(_loc27_ || param1)
                              {
                                 break loop138;
                              }
                              continue loop138;
                           }
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr147);
               }
               §§goto(addr117);
            }
            §§goto(addr134);
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
      
      public function §6"9§() : int
      {
         return this.§2!7§;
      }
      
      public function §-"=§() : Vector.<b2Vec2>
      {
         return this.§"!@§;
      }
      
      public function §<!A§() : Vector.<b2Vec2>
      {
         return this.§8!o§;
      }
      
      public function §0!3§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§"!@§[0].x * param1.x);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + this.§"!@§[0].y * param1.y);
            if(_loc7_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  if(§§pop() >= this.§2!7§)
                  {
                     if(!(_loc6_ && param1))
                     {
                        addr67:
                        §§push(_loc2_);
                        if(_loc7_)
                        {
                           if(!(_loc6_ && param1))
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                           addr187:
                        }
                        loop11:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr189:
                           addr79:
                           loop2:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc7_ || _loc2_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       addr123:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§"!@§[_loc4_].y * param1.y);
                                          if(_loc7_ || param1)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_ || param1)
                                             {
                                                addr165:
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                      addr184:
                                                   }
                                                }
                                                addr165:
                                             }
                                             §§goto(addr165);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                break loop2;
                                             }
                                          }
                                       }
                                       addr141:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr187);
                                    }
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr184);
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
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr123);
                        §§goto(addr79);
                     }
                     continue;
                  }
                  §§push(this.§"!@§[_loc4_].x * param1.x);
                  §§goto(addr141);
               }
               §§goto(addr67);
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §>h§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§"!@§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§"!@§[0].y * param1.y);
            if(_loc7_ || this)
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
               if(§§pop() >= this.§2!7§)
               {
                  if(!_loc7_)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc6_ && _loc3_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || this)
                           {
                              if(_loc7_ || this)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr107:
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       addr135:
                                       while(true)
                                       {
                                          §§push(this.§"!@§[_loc4_].y * param1.y);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr147:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr156:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      addr155:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         break loop2;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(_loc4_);
                                                      if(_loc7_)
                                                      {
                                                         addr174:
                                                         §§push(int(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            continue loop2;
                                                         }
                                                         addr174:
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                }
                                             }
                                             addr146:
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr107);
                        }
                     }
                     _loc4_++;
                     continue loop0;
                  }
               }
               else
               {
                  §§push(this.§"!@§[_loc4_].x * param1.x);
               }
               §§goto(addr135);
            }
            §§goto(addr174);
         }
         return this.§"!@§[_loc2_];
      }
      
      private function §6! §() : Boolean
      {
         return false;
      }
      
      private function §,>§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§"!@§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(_loc4_)
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
               while(_loc3_ && param1);
               
               continue;
               addr44:
            }
            else
            {
               this.§"!@§[_loc2_] = new b2Vec2();
            }
            while(true)
            {
               this.§8!o§[_loc2_] = new b2Vec2();
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
