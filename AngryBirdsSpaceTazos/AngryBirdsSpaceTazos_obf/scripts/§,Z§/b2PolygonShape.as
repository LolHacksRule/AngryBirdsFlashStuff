package §,Z§
{
   import §'!&§.*;
   import §3c§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §0!#§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0!#§ = new b2Mat22();
         }
      }
      
      b2internal var §^E§:b2Vec2;
      
      b2internal var §8S§:Vector.<b2Vec2>;
      
      b2internal var §<d§:Vector.<b2Vec2>;
      
      b2internal var §+!U§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            loop0:
            while(true)
            {
               §0w§ = b2internal::4"+;
               loop1:
               while(true)
               {
                  this.§^E§ = new b2Vec2();
                  loop2:
                  do
                  {
                     this.§8S§ = new Vector.<b2Vec2>();
                     while(true)
                     {
                        this.§<d§ = new Vector.<b2Vec2>();
                        while(!_loc2_)
                        {
                           §7!m§ = b2Settings.b2_polygonRadius;
                           continue loop1;
                           if(_loc1_ || this)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(!_loc1_);
                  
                  continue loop0;
               }
            }
         }
      }
      
      public static function §?Y§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§7!6§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §7!v§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && b2PolygonShape))
         {
            _loc3_.§>;§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §-z§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§>!$§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §<!"§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§^Z§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §%"7§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§`s§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §'3§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         var _loc16_:* = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc17_ || b2PolygonShape)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc17_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(!(_loc18_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!(_loc18_ && param2))
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!_loc18_)
               {
                  §§push(_loc9_.x);
                  while(true)
                  {
                     §§push(_loc5_);
                     loop2:
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
                              while(true)
                              {
                                 §§push(_loc9_.y);
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    loop7:
                                    while(_loc17_ || param1)
                                    {
                                       §§push(§§pop() - §§pop());
                                       while(!(_loc18_ && b2PolygonShape))
                                       {
                                          §§push(Number(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                if(_loc17_)
                                                {
                                                   §§push(_loc5_);
                                                   while(_loc17_ || param1)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc18_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc12_);
                                                         addr340:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * _loc13_);
                                                            addr342:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      addr339:
                                                   }
                                                   continue loop7;
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr399:
                                                   while(true)
                                                   {
                                                      _loc13_ = §§pop();
                                                      addr400:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_.y);
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     if(_loc18_ && _loc3_)
                     {
                        continue;
                     }
                     _loc16_ = §§pop();
                     §§goto(addr311);
                  }
               }
               §§goto(addr194);
            }
            §§goto(addr100);
         }
         if(_loc17_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc18_ && param2))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(_loc17_ || b2PolygonShape)
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc17_ || param2)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      b2internal static function §<9§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
               if(!(_loc27_ && param2))
               {
                  _loc5_[param3] = _loc5_[0];
               }
               if(!_loc27_)
               {
                  if(true)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc4_++;
                     addr110:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  addr96:
               }
               while(_loc27_)
               {
                  §§goto(addr96);
               }
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr110);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(!(_loc27_ && b2PolygonShape))
         {
            §§push(1);
            if(!(_loc27_ && param2))
            {
               _loc4_ = §§pop();
               if(_loc26_)
               {
                  addr136:
                  loop108:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1148:
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
                                 loop7:
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
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   loop13:
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
                                                            while(!(_loc27_ && param3))
                                                            {
                                                               _loc8_ = §§pop();
                                                               loop17:
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
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 loop23:
                                                                                 while(!_loc27_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             loop27:
                                                                                             while(!_loc27_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop28:
                                                                                                while(_loc26_)
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   loop29:
                                                                                                   for(; _loc26_; while(_loc26_ || param3)
                                                                                                   {
                                                                                                      §§goto(addr819);
                                                                                                      §§push(0);
                                                                                                   })
                                                                                                   {
                                                                                                      §§push(Number(Number.MAX_VALUE));
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            continue loop108;
                                                                                                         }
                                                                                                         §§push(Number(Number.MAX_VALUE));
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc14_ = §§pop();
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr840:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     addr841:
                                                                                                                     while(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(-Number.MAX_VALUE);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr826:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  addr472:
                                                                                                                  if(!(_loc26_ || param2))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(_loc26_ || b2PolygonShape)
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     loop43:
                                                                                                                     for(; _loc26_; if(_loc27_ && b2PolygonShape)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },§§goto(addr197),§§push(§§pop() + §§pop()))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!(_loc27_ && b2PolygonShape))
                                                                                                                        {
                                                                                                                           loop44:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          loop45:
                                                                                                                                          for(; !_loc27_; while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc26_ || param3))
                                                                                                                                             {
                                                                                                                                                continue loop45;
                                                                                                                                             }
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr308);
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr747);
                                                                                                                                          },§§goto(addr584))
                                                                                                                                          {
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             loop89:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(0.95);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      addr521:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr522:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr1146:
                                                                                                                                                               _loc4_++;
                                                                                                                                                               continue loop108;
                                                                                                                                                            }
                                                                                                                                                            while(!(_loc27_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr532:
                                                                                                                                                                  while(_loc26_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_ && param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop28;
                                                                                                                                                                     }
                                                                                                                                                                     _loc6_ = §§pop();
                                                                                                                                                                     §§goto(addr547);
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  addr574:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     break loop45;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            loop98:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc27_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  continue loop29;
                                                                                                                                                               }
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  loop74:
                                                                                                                                                                  for(; !(_loc27_ && param3); while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_ && param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop74;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() >= _loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        loop70:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                           addr623:
                                                                                                                                                                           while(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr633:
                                                                                                                                                                                 if(§§pop() > _loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr634:
                                                                                                                                                                                    if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr641:
                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc26_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr650:
                                                                                                                                                                                             _loc15_ = Number(§§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr572:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr574);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr651:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr674:
                                                                                                                                                                                          while(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop11;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                          §§goto(addr641);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr642:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop70;
                                                                                                                                                                                          §§goto(addr634);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr684:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr572);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr687);
                                                                                                                                                                           }
                                                                                                                                                                           addr673:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr674);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc27_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr673);
                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              addr766:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 addr767:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr768:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr772:
                                                                                                                                                                                       addr773:
                                                                                                                                                                                       §§push(§§pop() * _loc20_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr774);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop30;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr803:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  },continue loop21)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        loop79:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                           addr816:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                                                                                              addr785:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop79;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 continue loop24;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop20;
                                                                                                                                                                        addr815:
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop18;
                                                                                                                                                                     }
                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc26_ || param3))
                                                                                                                                                                        {
                                                                                                                                                                           loop73:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                              addr687:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop73;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc27_ && param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 if(_loc27_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop98;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           loop76:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                              addr776:
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              break loop74;
                                                                                                                                                                              addr774:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop76;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr758:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           break loop44;
                                                                                                                                                                           addr763:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                           continue loop74;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc26_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr747:
                                                                                                                                                                     §§push(§§pop() * _loc19_);
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop27;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                           break loop43;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr771);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr774);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr841);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr826);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr520:
                                                                                                                                                }
                                                                                                                                                addr584:
                                                                                                                                                loop105:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc26_ || b2PolygonShape)
                                                                                                                                                   {
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(_loc26_ || b2PolygonShape)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               loop106:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_ && param2)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop6;
                                                                                                                                                                     }
                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop108;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc17_++;
                                                                                                                                                                        addr557:
                                                                                                                                                                        addr561:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr816);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr665);
                                                                                                                                                                        }
                                                                                                                                                                        loop41:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           if(!(_loc26_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() >= param3)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop89;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          if(_loc26_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc26_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop14;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr472);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr768);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr263:
                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc26_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc26_ || param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  while(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     continue loop45;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr772);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr633);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr520);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr522);
                                                                                                                                                                                                         addr199:
                                                                                                                                                                                                         if(_loc27_ && param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc26_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr228:
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr230:
                                                                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop108;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc27_ && param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop106;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc26_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop43;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr521);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr295);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr664);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr197:
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr199);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr840);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr841);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr531);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr228);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr820:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop54:
                                                                                                                                                                                                                                          while(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1.R);
                                                                                                                                                                                                                                             loop55:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr372:
                                                                                                                                                                                                                                                   if(_loc26_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().col2);
                                                                                                                                                                                                                                                      loop56:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                         addr381:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                            addr382:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop52:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(param1.R);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().col1);
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                              continue loop54;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr412:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                              continue loop52;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr412);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(_loc26_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1.R);
                                                                                                                                                                                                                                                                           break loop55;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop105;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr583:
                                                                                                                                                                                                                                                                        addr547:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr932:
                                                                                                                                                                                                                                                                  _loc25_ = §§pop();
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1113:
                                                                                                                                                                                                                                                                     §§push(param1.§`C§);
                                                                                                                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                                                                                                                     §§push(_loc25_.col1.x);
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1119:
                                                                                                                                                                                                                                                                        addr1143:
                                                                                                                                                                                                                                                                        addr1144:
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                                                        if(_loc26_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1131:
                                                                                                                                                                                                                                                                           §§push(§§pop() + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                                                                        addr1145:
                                                                                                                                                                                                                                                                        §§push(param1.§`C§);
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc26_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc25_.col1);
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc25_.col2);
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1085:
                                                                                                                                                                                                                                                                                                         if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                                                                                                                                                                            if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1101:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1104:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                     addr991:
                                                                                                                                                                                                                                                                                                                     addr1013:
                                                                                                                                                                                                                                                                                                                     addr994:
                                                                                                                                                                                                                                                                                                                     §§push(param1.§3y§);
                                                                                                                                                                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1012:
                                                                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1011:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - _loc13_);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1108:
                                                                                                                                                                                                                                                                                                                     addr1014:
                                                                                                                                                                                                                                                                                                                     §§push(param1.§3y§);
                                                                                                                                                                                                                                                                                                                     if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                                                                                                                        if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                              if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                 if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr974:
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr977:
                                                                                                                                                                                                                                                                                                                                       §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr989:
                                                                                                                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr991);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1146);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1145);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1108);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1014);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1012);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1011);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr974);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1013);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr977);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr994);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1113);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1119);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1131);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1101);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1131);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1104);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1131);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1085);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1143);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1104);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1113);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1144);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1104);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1113);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1131);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr989);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr634);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr523);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr397);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr411);
                                                                                                                                                                                                                                                §§goto(addr372);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop7;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop106;
                                                                                                                                                                                                                                       addr321:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr259);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr932);
                                                                                                                                                                                                                                                §§push(param1.R);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr776);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr651);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr382);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr747);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr725);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                              §§goto(addr230);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr650);
                                                                                                                                                                                                                           addr308:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                                                                           §§goto(addr321);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr320:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr532);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr261);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr228);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr752);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr697);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr642);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr767);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr522);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr766);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr728);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr557);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr523);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              addr814:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr815);
                                                                                                                                                                        }
                                                                                                                                                                        addr819:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                           §§goto(addr820);
                                                                                                                                                                           §§goto(addr561);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr623);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr814);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr785);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                         §§goto(addr763);
                                                                                                                                                         break loop44;
                                                                                                                                                      }
                                                                                                                                                      continue loop13;
                                                                                                                                                      addr762:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr654);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr583);
                                                                                                                                                }
                                                                                                                                                §§goto(addr555);
                                                                                                                                             }
                                                                                                                                             addr756:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr758);
                                                                                                                                                }
                                                                                                                                                §§goto(addr773);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr825);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr531);
                                                                                                                           }
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           §§goto(addr762);
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr498:
                                                                                                                        }
                                                                                                                        §§goto(addr522);
                                                                                                                     }
                                                                                                                     §§goto(addr756);
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                       }
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
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc27_ && param2)
                                                {
                                                   continue;
                                                }
                                                _loc14_ = §§pop();
                                                §§goto(addr684);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr650);
                        continue loop108;
                     }
                  }
               }
               return;
            }
            §§goto(addr1148);
         }
         §§goto(addr136);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc2_)
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
         if(_loc4_)
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
            if(!_loc5_)
            {
               this.§^E§.SetV(_loc2_.§^E§);
               while(true)
               {
                  this.§+!U§ = _loc2_.§+!U§;
                  while(_loc4_ || param1)
                  {
                     this.§"#§(this.§+!U§);
                     while(_loc4_)
                     {
                        _loc3_ = 0;
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc3_ < this.§+!U§)
                           {
                              this.§8S§[_loc3_].SetV(_loc2_.§8S§[_loc3_]);
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§<d§[_loc3_].SetV(_loc2_.§<d§[_loc3_]);
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       break;
                                    }
                                    _loc3_++;
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr141);
                        }
                     }
                  }
               }
            }
            §§goto(addr99);
         }
         addr141:
      }
      
      public function §7!6§(param1:Array, param2:Number = 0) : void
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
         if(!(_loc8_ && _loc3_))
         {
            this.§>;§(_loc3_,param2);
         }
      }
      
      public function §>;§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(!_loc8_)
         {
            §§push(param2);
            if(!_loc8_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr230:
                     while(true)
                     {
                        param2 = §§pop();
                        addr231:
                        while(true)
                        {
                        }
                     }
                  }
                  addr227:
               }
               loop1:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  addr221:
                  while(true)
                  {
                     this.§+!U§ = param2;
                     while(true)
                     {
                        if(_loc7_)
                        {
                           continue;
                        }
                        §§goto(addr227);
                     }
                     continue loop1;
                  }
                  loop7:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop8:
                     while(true)
                     {
                        §§push(this.§+!U§);
                        loop9:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              this.§8S§[_loc3_].SetV(param1[_loc3_]);
                              if(!(_loc7_ || param1))
                              {
                                 break;
                              }
                              _loc3_++;
                              continue loop7;
                           }
                           loop10:
                           while(true)
                           {
                              §§push(0);
                              loop11:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc7_ || _loc3_)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(this.§+!U§);
                                             loop15:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr309:
                                                      this.§^E§ = §'3§(this.§8S§,this.§+!U§);
                                                      break loop9;
                                                   }
                                                   break loop9;
                                                }
                                                §§push(_loc3_);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc7_)
                                                         {
                                                            if(_loc8_ && param2)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§push(1);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  break loop15;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  if(§§pop() < this.§+!U§)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(_loc8_ && _loc3_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(_loc3_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(1);
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           addr86:
                                                                           addr85:
                                                                           §§push(int(§§pop() + §§pop()));
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr107:
                                                                              §§push(int(§§pop()));
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              addr89:
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(!(_loc7_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           _loc6_ = b2Math.§,!`§(this.§8S§[_loc5_],this.§8S§[_loc4_]);
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              b2Settings.b2Assert(_loc6_.§"z§() > Number.MIN_VALUE);
                                                                              this.§<d§[_loc3_].SetV(b2Math.§^!;§(_loc6_,1));
                                                                              addr260:
                                                                              this.§<d§[_loc3_].Normalize();
                                                                              addr279:
                                                                              if(_loc7_)
                                                                              {
                                                                                 _loc3_++;
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§goto(addr260);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr260);
                                                                                 addr268:
                                                                              }
                                                                              addr287:
                                                                              §§goto(addr287);
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr98:
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(!(_loc7_ || this))
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(0);
                                                                  if(!(_loc7_ || param2))
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr98);
                                                               }
                                                               §§goto(addr86);
                                                            }
                                                            §§goto(addr85);
                                                         }
                                                         §§goto(addr89);
                                                      }
                                                      break;
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr309);
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr230);
         }
         §§goto(addr221);
      }
      
      public function §>!$§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§+!U§ = 4;
            loop0:
            while(true)
            {
               this.§"#§(4);
               while(true)
               {
                  this.§8S§[0].Set(-param1,-param2);
                  loop2:
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§8S§[1].Set(param1,-param2);
                     loop3:
                     while(!_loc3_)
                     {
                        this.§8S§[2].Set(param1,param2);
                        loop4:
                        while(true)
                        {
                           this.§8S§[3].Set(-param1,param2);
                           while(!_loc3_)
                           {
                              this.§<d§[0].Set(0,-1);
                              while(!(_loc3_ && param1))
                              {
                                 this.§<d§[1].Set(1,0);
                                 while(!_loc3_)
                                 {
                                    this.§<d§[2].Set(0,1);
                                    loop8:
                                    while(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          this.§<d§[3].Set(-1,0);
                                          while(_loc4_)
                                          {
                                             continue loop4;
                                             this.§^E§.§@!d§();
                                             if(_loc4_)
                                             {
                                                return;
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §^Z§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            this.§+!U§ = 4;
            loop0:
            while(true)
            {
               this.§"#§(4);
               while(true)
               {
                  this.§8S§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§8S§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§8S§[2].Set(param1,param2);
                        loop4:
                        for(; _loc7_; if(!(_loc7_ || param2))
                        {
                           continue;
                        },if(false)
                        {
                           loop10:
                           while(true)
                           {
                              this.§<d§[3].Set(-1,0);
                              while(!_loc8_)
                              {
                                 this.§^E§ = param3;
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                                 addr30:
                                 if(_loc8_ && param3)
                                 {
                                    addr81:
                                    while(_loc7_ || param3)
                                    {
                                       continue loop2;
                                       §§goto(addr30);
                                    }
                                    continue loop3;
                                    addr81:
                                 }
                                 §§goto(addr37);
                              }
                              addr72:
                              while(true)
                              {
                                 continue loop10;
                              }
                           }
                           §§goto(addr133);
                        },var _loc5_:b2Transform,(_loc5_ = new b2Transform()).position = param3,if(_loc7_)
                        {
                           _loc5_.R.Set(param4);
                        },var _loc6_:int = 0,addr191:,if(_loc6_ >= this.§+!U§)
                        {
                           if(!_loc8_)
                           {
                              if(!_loc7_)
                              {
                                 this.§<d§[_loc6_] = b2Math.§,!s§(_loc5_.R,this.§<d§[_loc6_]);
                                 _loc6_++;
                                 addr205:
                                 if(_loc7_)
                                 {
                                    §§goto(addr191);
                                 }
                                 addr221:
                                 §§goto(addr221);
                                 addr245:
                              }
                              return;
                           }
                           §§goto(addr205);
                        },this.§8S§[_loc6_] = b2Math.§=&§(_loc5_,this.§8S§[_loc6_]),§§goto(addr245))
                        {
                           this.§8S§[3].Set(-param1,param2);
                           while(true)
                           {
                              this.§<d§[0].Set(0,-1);
                              continue loop3;
                              addr37:
                              if(!(_loc8_ && this))
                              {
                                 continue loop4;
                              }
                           }
                        }
                        continue loop0;
                     }
                     if(_loc8_ && param2)
                     {
                        continue;
                     }
                     this.§<d§[2].Set(0,1);
                     §§goto(addr72);
                  }
                  if(!_loc7_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§<d§[1].Set(1,0);
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §`s§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§+!U§ = 2;
            loop0:
            while(true)
            {
               this.§"#§(2);
               while(true)
               {
                  this.§8S§[0].SetV(param1);
                  while(!_loc4_)
                  {
                     this.§8S§[1].SetV(param2);
                     loop3:
                     while(_loc3_)
                     {
                        §§push(this.§^E§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr173:
                           while(true)
                           {
                              §§push(param1.x);
                              if(_loc3_)
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr149:
                                    §§push(param2.y);
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ && param2))
                                    {
                                       addr167:
                                       §§pop().y = §§pop() * §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          this.§<d§[0] = b2Math.§^!;§(b2Math.§,!`§(param2,param1),1);
                                          continue loop0;
                                          addr76:
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                if(_loc4_ && this)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   this.§<d§[1].x = -this.§<d§[0].x;
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr62:
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             }
                                             continue loop10;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr181:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop4;
                                          }
                                       }
                                       addr180:
                                    }
                                 }
                              }
                              §§goto(addr180);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§^E§);
            if(!(_loc4_ && this))
            {
               §§push(0.5);
               if(!(_loc4_ && param2))
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        §§push(param1.y);
                        if(_loc3_)
                        {
                           §§goto(addr149);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr181);
               }
               §§goto(addr167);
            }
            §§goto(addr172);
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
         if(_loc12_ || _loc3_)
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
            if(!(_loc11_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(!(_loc11_ && this))
         {
            §§push(_loc4_.col1.x);
            if(_loc12_)
            {
               §§push(§§pop() * §§pop());
               if(_loc12_ || param1)
               {
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     addr88:
                     §§push(§§pop() + §§pop() * _loc4_.col1.y);
                     if(_loc12_)
                     {
                        addr91:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr88);
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(_loc12_)
               {
                  §§push(_loc4_.col2.x);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc12_ || _loc3_)
                     {
                        §§push(_loc6_);
                        if(_loc12_ || param1)
                        {
                           addr117:
                           §§push(§§pop() * _loc4_.col2.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc11_ && param1))
                        {
                           addr129:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc8_:* = §§pop();
                     var _loc9_:int = 0;
                     while(true)
                     {
                        if(_loc9_ >= this.§+!U§)
                        {
                           return true;
                        }
                        _loc3_ = this.§8S§[_loc9_];
                        if(!_loc11_)
                        {
                           §§push(_loc7_);
                           if(_loc12_ || _loc3_)
                           {
                              §§push(_loc3_.x);
                              if(_loc12_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc12_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc12_)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc12_ || this)
                                       {
                                          addr184:
                                          §§push(_loc8_);
                                          if(_loc12_)
                                          {
                                             addr189:
                                             addr187:
                                             §§push(§§pop() - _loc3_.y);
                                             if(!_loc12_)
                                             {
                                             }
                                             addr193:
                                             _loc6_ = §§pop();
                                             _loc3_ = this.§<d§[_loc9_];
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
                                                   if(_loc12_)
                                                   {
                                                      addr222:
                                                      §§push(_loc3_.y);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() * _loc6_);
                                                         if(_loc12_)
                                                         {
                                                            addr230:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc12_ || param1)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     addr249:
                                                                     _loc10_ = §§pop();
                                                                     addr250:
                                                                     §§push(0);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr250);
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
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr193);
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr184);
                     }
                     return false;
                  }
                  §§goto(addr117);
               }
               §§goto(addr129);
            }
            §§goto(addr88);
         }
         §§goto(addr91);
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
         §§push(param2.§7"?§);
         if(_loc21_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc20_ && param3))
         {
            §§push(param2.p1);
            if(_loc21_ || param1)
            {
               §§push(§§pop().x);
               if(_loc21_ || param3)
               {
                  §§push(param3.position);
                  if(!_loc20_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc20_ && param3))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_)
                        {
                           addr86:
                           §§push(Number(§§pop()));
                           if(!_loc20_)
                           {
                              addr89:
                              _loc6_ = §§pop();
                              if(!(_loc20_ && param1))
                              {
                                 addr99:
                                 §§push(param2.p1.y);
                                 if(!(_loc20_ && param1))
                                 {
                                    addr110:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc20_ && param1))
                                    {
                                       addr118:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc7_ = §§pop();
                                 }
                                 §§goto(addr118);
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(_loc21_ || param3)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(_loc21_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc20_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc21_)
                                       {
                                          addr143:
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc21_ || param1)
                                       {
                                          addr155:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(_loc6_);
                                       if(!_loc20_)
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc20_)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc20_ && param1))
                                                {
                                                   addr180:
                                                   §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                   if(!(_loc20_ && param3))
                                                   {
                                                      addr188:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr180);
                                             }
                                             var _loc11_:* = §§pop();
                                             if(!_loc20_)
                                             {
                                                §§push(param2.p2);
                                                if(_loc21_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc20_ && param2))
                                                   {
                                                      §§push(param3.position);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc21_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc21_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!(_loc20_ && param1))
                                                                  {
                                                                     addr232:
                                                                     §§push(param2.p2.y);
                                                                     if(_loc21_)
                                                                     {
                                                                        addr238:
                                                                        §§push(§§pop() - param3.position.y);
                                                                        if(!(_loc20_ && param3))
                                                                        {
                                                                           addr247:
                                                                           _loc7_ = Number(§§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  _loc8_ = param3.R;
                                                                  §§push(_loc6_);
                                                                  if(!(_loc20_ && param2))
                                                                  {
                                                                     §§push(_loc8_.col1.x);
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc21_ || param1)
                                                                        {
                                                                           addr278:
                                                                           §§push(_loc7_);
                                                                           if(!(_loc20_ && param3))
                                                                           {
                                                                              addr290:
                                                                              §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                                                              if(!_loc20_)
                                                                              {
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
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_ || param2)
                                                                              {
                                                                                 addr316:
                                                                                 §§push(_loc7_);
                                                                                 if(_loc21_ || param3)
                                                                                 {
                                                                                    addr328:
                                                                                    §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr331:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(!(_loc20_ && param2))
                                                                                       {
                                                                                          addr345:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(_loc13_);
                                                                                       if(_loc21_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() - _loc11_);
                                                                                          if(_loc21_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc15_:* = §§pop();
                                                                                       var _loc16_:int = -1;
                                                                                       var _loc17_:int = 0;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(this.§+!U§);
                                                                                             if(!(_loc20_ && param1))
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   §§goto(addr840);
                                                                                                }
                                                                                                §§push((_loc9_ = this.§8S§[_loc17_]).x);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(!_loc20_)
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
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  addr398:
                                                                                                                  §§push(§§pop() - _loc11_);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr402:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  _loc7_ = §§pop();
                                                                                                               }
                                                                                                               §§goto(addr402);
                                                                                                            }
                                                                                                            §§push((_loc9_ = this.§<d§[_loc17_]).x);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    if(_loc21_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_.x);
                                                                                                                                       loop47:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          addr791:
                                                                                                                                          loop46:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop29:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.y);
                                                                                                                                                if(_loc21_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr803:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr804:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr805:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr806:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                  addr807:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop41;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr802:
                                                                                                                                                }
                                                                                                                                                loop27:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() != §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      loop15:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         addr774:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                            loop17:
                                                                                                                                                            while(_loc21_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               loop16:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        loop14:
                                                                                                                                                                        while(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           loop32:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 addr743:
                                                                                                                                                                                 loop42:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc21_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc21_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   loop35:
                                                                                                                                                                                                   while(_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr701:
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         loop13:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop27;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc20_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop16;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop24:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                           loop2:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc21_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop35;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc20_ && param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop46;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                       if(_loc20_ && param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc21_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc21_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop15;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr653:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop8:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop32;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop47;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr807);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        addr811:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop14;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr769:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr492:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr653);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr810:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc5_ = §§pop();
                                                                                                                                                                                                                                                                           break loop13;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr804);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                     addr765:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                        break loop16;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr764:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break loop13;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr492);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr636:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr811);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr653);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr802);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr803);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr653);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr809:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr810);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr638);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr701);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr492);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr768);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr805);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop16;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr761);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr759:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr806);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr765);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break loop17;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr759);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr767);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr809);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr790:
                                                                                                                                    }
                                                                                                                                    §§goto(addr726);
                                                                                                                                 }
                                                                                                                                 §§goto(addr766);
                                                                                                                              }
                                                                                                                              §§goto(addr807);
                                                                                                                           }
                                                                                                                           §§goto(addr610);
                                                                                                                        }
                                                                                                                        §§goto(addr743);
                                                                                                                     }
                                                                                                                     §§goto(addr774);
                                                                                                                  }
                                                                                                                  §§goto(addr767);
                                                                                                               }
                                                                                                               §§goto(addr791);
                                                                                                            }
                                                                                                            §§goto(addr790);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      §§goto(addr402);
                                                                                                   }
                                                                                                   §§goto(addr398);
                                                                                                }
                                                                                                §§goto(addr402);
                                                                                             }
                                                                                             §§goto(addr832);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr832:
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          return false;
                                                                                       }
                                                                                       if(!(_loc20_ && param3))
                                                                                       {
                                                                                          addr840:
                                                                                          §§goto(addr843);
                                                                                       }
                                                                                       addr843:
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          break loop0;
                                                                                       }
                                                                                       param1.fraction = _loc4_;
                                                                                       _loc8_ = param3.R;
                                                                                       _loc9_ = this.§<d§[_loc16_];
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(param1.normal);
                                                                                          loop48:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_.col1);
                                                                                             addr940:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr941:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.x);
                                                                                                   addr943:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr944:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         addr956:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr957:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_.y);
                                                                                                               addr959:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr960:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr961:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        continue loop48;
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
                                                                                          addr938:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.normal);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(_loc8_.col1);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc21_ || param2)
                                                                                                {
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         §§push(_loc9_.x);
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        addr912:
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr917:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc20_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 addr927:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc21_ || this)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr957);
                                                                                                                           }
                                                                                                                           §§goto(addr960);
                                                                                                                        }
                                                                                                                        §§goto(addr959);
                                                                                                                     }
                                                                                                                     §§goto(addr917);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr956);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr927);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr943);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr912);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr941);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr944);
                                                                                                }
                                                                                                §§goto(addr927);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr940);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr938);
                                                                                          }
                                                                                          §§goto(addr940);
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       return true;
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr328);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr247);
                                                }
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr86);
            }
         }
         §§goto(addr99);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§8S§[0];
         §§push(param2.position.x);
         if(_loc12_)
         {
            §§push(_loc3_.col1.x);
            if(_loc12_)
            {
               §§push(_loc4_.x);
               if(_loc12_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc13_)
                  {
                     addr47:
                     §§push(_loc3_.col2.x);
                     if(_loc12_ || this)
                     {
                        addr57:
                        §§push(§§pop() * _loc4_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                     addr64:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(_loc12_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc13_ && _loc3_))
                     {
                        §§push(_loc4_.x);
                        if(!(_loc13_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_)
                           {
                              addr93:
                              §§push(_loc3_.col2.y);
                              if(!_loc13_)
                              {
                                 addr101:
                                 §§push(§§pop() + §§pop() * _loc4_.y);
                              }
                              §§goto(addr101);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc12_ || param1)
                           {
                              addr110:
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
                           if(!(_loc13_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           var _loc9_:int = 1;
                           while(_loc9_ < this.§+!U§)
                           {
                              _loc4_ = this.§8S§[_loc9_];
                              if(!_loc13_)
                              {
                                 §§push(param2.position);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr485:
                                    while(true)
                                    {
                                       §§push(_loc3_.col1);
                                       addr487:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr488:
                                          while(true)
                                          {
                                             §§push(_loc4_.x);
                                             addr490:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr491:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col2);
                                                   addr493:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr494:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_.y);
                                                         addr496:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr497:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr498:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr499:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr500:
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
                              §§goto(addr348);
                           }
                           if(!_loc13_)
                           {
                              §§push(param1.§<!@§);
                              if(!_loc13_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc13_ && param1))
                                 {
                                    §§push(§§pop() - b2internal::7!m);
                                    if(_loc12_)
                                    {
                                       §§pop().x = §§pop();
                                       if(!(_loc13_ && param1))
                                       {
                                          addr578:
                                          §§push(param1.§<!@§);
                                          §§push(_loc6_);
                                          if(!_loc13_)
                                          {
                                             addr581:
                                             §§push(§§pop() - b2internal::7!m);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§2!1§);
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr555:
                                             §§goto(addr565);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr581);
                              }
                              §§goto(addr578);
                           }
                           addr565:
                           while(true)
                           {
                              §§pop().x = §§pop() + b2internal::7!m;
                              continue loop56;
                           }
                           while(true)
                           {
                              §§push(param1.§2!1§);
                              if(!_loc12_)
                              {
                                 continue loop57;
                              }
                              §§push(_loc8_);
                              if(_loc12_)
                              {
                                 §§pop().y = §§pop() + b2internal::7!m;
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 continue loop56;
                              }
                              §§goto(addr555);
                           }
                           return;
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr110);
               }
               §§goto(addr57);
            }
            §§goto(addr47);
         }
         §§goto(addr64);
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
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(_loc28_)
         {
            if(this.§+!U§ == 2)
            {
               while(true)
               {
                  §§push(param1.§`C§);
                  loop133:
                  while(true)
                  {
                     §§push(0.5);
                     if(_loc28_ || _loc3_)
                     {
                        §§push(§§pop() * (this.§8S§[0].x + this.§8S§[1].x));
                     }
                     loop134:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr154:
                        while(true)
                        {
                           §§push(param1.§`C§);
                           if(!(_loc28_ || _loc3_))
                           {
                              break;
                           }
                           continue loop134;
                        }
                        continue loop133;
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(_loc28_ || param2)
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
               if(!(_loc27_ && this))
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
               if(_loc28_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(!(_loc27_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               loop0:
               while(_loc10_ < this.§+!U§)
               {
                  _loc11_ = this.§8S§[_loc10_];
                  if(_loc28_ || param1)
                  {
                     _loc12_ = _loc10_ + 1 < this.§+!U§ ? this.§8S§[int(_loc10_ + 1)] : this.§8S§[0];
                     if(_loc28_ || _loc3_)
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
                                                      if(!_loc27_)
                                                      {
                                                         §§push(_loc7_);
                                                         loop11:
                                                         while(_loc28_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr625:
                                                            if(!(_loc28_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc27_ && param2)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            loop118:
                                                            while(_loc28_ || param2)
                                                            {
                                                               §§push(0.5);
                                                               if(_loc28_ || param2)
                                                               {
                                                                  if(!_loc27_)
                                                                  {
                                                                     if(!(_loc27_ && this))
                                                                     {
                                                                        addr674:
                                                                        if(!(_loc27_ && param2))
                                                                        {
                                                                           §§push(_loc20_);
                                                                           loop107:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc27_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop108:
                                                                                 while(!(_loc27_ && this))
                                                                                 {
                                                                                    §§push(_loc20_);
                                                                                    loop114:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc28_ || this)
                                                                                       {
                                                                                          if(!(_loc27_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             loop115:
                                                                                             while(_loc28_ || this)
                                                                                             {
                                                                                                if(_loc28_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   loop119:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc27_ && param1))
                                                                                                      {
                                                                                                         addr730:
                                                                                                         if(!(_loc27_ && _loc3_))
                                                                                                         {
                                                                                                            addr737:
                                                                                                            if(_loc28_ || param1)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop120:
                                                                                                               while(!(_loc27_ && _loc3_))
                                                                                                               {
                                                                                                                  _loc26_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                        addr279:
                                                                                                                     }
                                                                                                                     loop122:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!(_loc28_ || this))
                                                                                                                        {
                                                                                                                           addr398:
                                                                                                                           if(!(_loc27_ && _loc3_))
                                                                                                                           {
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                 {
                                                                                                                                    addr413:
                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    loop81:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc27_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             addr890:
                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                             {
                                                                                                                                                addr758:
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                loop82:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(0.25);
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr771:
                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                            loop83:
                                                                                                                                                            while(!(_loc27_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr785:
                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr790:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                    if(!(_loc27_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr800:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   addr805:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                      addr806:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr804:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr807:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr592:
                                                                                                                                                                                          if(_loc27_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr618:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      loop117:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr625);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               addr836:
                                                                                                                                                                                                               addr991:
                                                                                                                                                                                                               while(_loc28_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  break loop120;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1115:
                                                                                                                                                                                                               while(_loc28_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        loop66:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           addr949:
                                                                                                                                                                                                                           loop67:
                                                                                                                                                                                                                           while(_loc28_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc20_ = §§pop();
                                                                                                                                                                                                                              loop68:
                                                                                                                                                                                                                              while(!(_loc27_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc27_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                    while(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       break loop82;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop66;
                                                                                                                                                                                                                                    addr934:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                                 if(!(_loc28_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       addr900:
                                                                                                                                                                                                                                       loop76:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc28_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             loop77:
                                                                                                                                                                                                                                             for(; _loc28_; while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop77;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc27_ && this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   while(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc24_ = §§pop();
                                                                                                                                                                                                                                                         continue loop81;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1096);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr934);
                                                                                                                                                                                                                                                   addr876:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1126);
                                                                                                                                                                                                                                             },while(_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                break loop76;
                                                                                                                                                                                                                                             },continue loop6)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop67;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop49:
                                                                                                                                                                                                                                                   while(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                         addr1004:
                                                                                                                                                                                                                                                         addr1130:
                                                                                                                                                                                                                                                         while(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc27_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1014:
                                                                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                                                                     break loop83;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                  §§goto(addr674);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                        addr1058:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc11_.x);
                                                                                                                                                                                                                                                                           addr1060:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              addr1061:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc12_.x);
                                                                                                                                                                                                                                                                                 addr1063:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1057:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1064:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     addr1065:
                                                                                                                                                                                                                                                                     while(_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop49;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1125:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        addr1126:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                                                                           addr1127:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                                                                              break loop114;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1014);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1014:
                                                                                                                                                                                                                                                               addr1053:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                                                                                                                               addr1147:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1125);
                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                     addr1080:
                                                                                                                                                                                                                                                                     while(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc27_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop8;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           addr1096:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              addr1097:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                 break loop68;
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
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop9;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc23_ = §§pop();
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                   continue loop77;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                                                                                                                break loop81;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr919:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                          §§goto(addr737);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                                                                          addr1121:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1080);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr900);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr931:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1077);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(_loc28_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                    break loop122;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1147);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1121);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr890);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1001:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        addr1158:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc15_ = §§pop();
                                                                                                                                                                                                                           addr1159:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc12_.y);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1157:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     break loop108;
                                                                                                                                                                                                                     §§goto(addr949);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr836);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  addr1116:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1117);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr991);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop117;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr835:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                      addr618:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr805);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop107;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             break loop119;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr808:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr573:
                                                                                                                                                                                 while(_loc28_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                       addr582:
                                                                                                                                                                                       loop109:
                                                                                                                                                                                       while(!(_loc27_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc24_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr592);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr809:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                break loop109;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr811);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr809);
                                                                                                                                                                        }
                                                                                                                                                                        addr785:
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     addr356:
                                                                                                                                                                     if(_loc27_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr371:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop108;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc28_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           break loop119;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc28_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc28_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr398);
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              while(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       if(_loc28_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop1;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr991);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1159);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1080);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1068);
                                                                                                                                                                              addr1037:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr859);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr398);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1064);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_.y);
                                                                                                                                                                     addr1033:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr1034:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           break loop115;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1031:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr785);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr1023:
                                                                                                                                                               while(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  loop55:
                                                                                                                                                                  for(; !_loc27_; if(_loc27_ && param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },§§goto(addr573),§§push(_loc22_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc11_.y);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1031);
                                                                                                                                                                        addr508:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc28_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc27_ && param2)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop107;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr526:
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc24_);
                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr543:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr551:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop108;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop107;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr558:
                                                                                                                                                                                          if(!(_loc27_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop55;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr827:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr835);
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             §§goto(addr558);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1061);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                       addr552:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr582);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr590);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr800);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr808);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr600);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1058);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1127);
                                                                                                                                                               §§goto(addr771);
                                                                                                                                                            }
                                                                                                                                                            addr771:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1065);
                                                                                                                                                      }
                                                                                                                                                      break loop119;
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   §§goto(addr730);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc27_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      _loc21_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         addr918:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr919);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr945:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   §§goto(addr758);
                                                                                                                                                }
                                                                                                                                                addr758:
                                                                                                                                                §§goto(addr1004);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1001);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr915);
                                                                                                                                       §§goto(addr413);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr922);
                                                                                                                                       }
                                                                                                                                       §§goto(addr945);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1077);
                                                                                                                                 }
                                                                                                                                 addr854:
                                                                                                                                 while(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       continue loop119;
                                                                                                                                    }
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          if(_loc28_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(0.25);
                                                                                                                                             if(_loc28_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                      if(_loc28_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc28_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop114;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc24_);
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc27_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc28_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc27_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr508);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr582);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr543);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1060);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1033);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr785);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr806);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr551);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr824:
                                                                                                                                                               while(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr827);
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1116);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1063);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr526);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr523);
                                                                                                                                                }
                                                                                                                                                §§goto(addr804);
                                                                                                                                             }
                                                                                                                                             §§goto(addr618);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1097);
                                                                                                                                       }
                                                                                                                                       §§goto(addr876);
                                                                                                                                    }
                                                                                                                                    §§goto(addr836);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1040);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr1115);
                                                                                                                              }
                                                                                                                              addr1139:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr398:
                                                                                                                        }
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           continue loop120;
                                                                                                                        }
                                                                                                                        continue loop119;
                                                                                                                     }
                                                                                                                     while(_loc28_ || this)
                                                                                                                     {
                                                                                                                        §§goto(addr1053);
                                                                                                                        §§push(_loc18_);
                                                                                                                        §§goto(addr398);
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                     if(!(_loc28_ || param2))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr279);
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc28_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     _loc25_ = §§pop();
                                                                                                                     §§goto(addr854);
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr745);
                                                                                                               }
                                                                                                               addr745:
                                                                                                               §§goto(addr1158);
                                                                                                            }
                                                                                                            §§goto(addr900);
                                                                                                         }
                                                                                                         §§goto(addr758);
                                                                                                      }
                                                                                                      addr815:
                                                                                                      while(_loc28_)
                                                                                                      {
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§push(0.5);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               §§goto(addr823);
                                                                                                               §§push(_loc19_);
                                                                                                            }
                                                                                                            §§goto(addr824);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr1146);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr918);
                                                                                                   }
                                                                                                   while(!_loc27_)
                                                                                                   {
                                                                                                      §§goto(addr815);
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§goto(addr1057);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr1130);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                break loop118;
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr790);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr1129);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr1145);
                                                                                 }
                                                                                 addr685:
                                                                              }
                                                                              §§goto(addr771);
                                                                           }
                                                                        }
                                                                        §§goto(addr1014);
                                                                     }
                                                                     §§goto(addr1023);
                                                                  }
                                                                  §§goto(addr824);
                                                               }
                                                               §§goto(addr685);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr1037);
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                      §§goto(addr1157);
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
                     §§goto(addr931);
                  }
                  §§goto(addr236);
               }
               if(_loc28_ || _loc3_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc28_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§[]§ = §§pop();
                  if(_loc28_ || this)
                  {
                     §§push(_loc3_);
                     if(!(_loc27_ && this))
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1305:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1306:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr1307:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           addr1241:
                           §§push(1);
                           if(_loc27_ && param2)
                           {
                              continue;
                           }
                           §§push(_loc5_);
                           if(_loc28_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc28_ || param1)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && param1))
                                 {
                                    addr1268:
                                    if(_loc28_ || param2)
                                    {
                                       if(!(_loc27_ && param2))
                                       {
                                          addr1283:
                                          _loc4_ = Number(§§pop());
                                          loop130:
                                          while(true)
                                          {
                                             param1.§`C§.Set(_loc3_,_loc4_);
                                             while(true)
                                             {
                                                if(!(_loc27_ && this))
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop130;
                                             }
                                             addr1309:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc27_)
                                                {
                                                   §§goto(addr1241);
                                                }
                                                §§goto(addr1268);
                                             }
                                          }
                                       }
                                       §§goto(addr1307);
                                    }
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr1309);
                                    }
                                    addr1308:
                                 }
                                 §§goto(addr1283);
                              }
                              §§goto(addr1306);
                           }
                           §§goto(addr1305);
                        }
                     }
                     §§goto(addr1308);
                  }
               }
               §§goto(addr1309);
            }
         }
         param1.I = 0;
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
         var _loc5_:b2Vec2 = b2Math.§7!`§(param3.R,param1);
         §§push(param2);
         if(_loc27_)
         {
            §§push(§§pop() - b2Math.§<"E§(param1,param3.position));
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
         if(!(_loc28_ && this))
         {
            _loc12_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc12_);
            if(_loc27_ || param2)
            {
               §§push(this.§+!U§);
               if(!_loc28_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc28_ && param2))
                     {
                        §§push(_loc8_);
                        if(!_loc28_)
                        {
                           addr405:
                           var _loc26_:* = §§pop();
                           if(!(_loc28_ && this))
                           {
                              §§push(0);
                              if(!(_loc28_ && param1))
                              {
                                 §§push(_loc26_);
                                 if(!(_loc28_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc27_)
                                       {
                                          addr432:
                                          §§push(0);
                                          if(!(_loc28_ && param2))
                                          {
                                             addr440:
                                          }
                                          addr459:
                                          if(_loc27_)
                                          {
                                             addr462:
                                             switch(§§pop())
                                             {
                                                case 1:
                                                   addr337:
                                                   §§push(_loc9_);
                                                   if(_loc27_ || param2)
                                                   {
                                                      §§push(-1);
                                                      if(!_loc28_)
                                                      {
                                                         addr349:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc27_ || param2)
                                                            {
                                                               §§push(this.§+!U§);
                                                               if(_loc28_)
                                                               {
                                                                  §§goto(addr405);
                                                               }
                                                               §§push(§§pop() - 1);
                                                               if(_loc27_ || this)
                                                               {
                                                                  addr369:
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc28_ && param2))
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  addr396:
                                                                  _loc10_ = §§pop();
                                                                  if(_loc27_)
                                                                  {
                                                                     addr399:
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               addr474:
                                                               var _loc13_:int = §§pop() % this.§+!U§;
                                                               addr470:
                                                               §§push(_loc10_);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc27_ || param2)
                                                                  {
                                                                     §§push(§§pop() % this.§+!U§);
                                                                  }
                                                                  §§push(int(§§pop()));
                                                               }
                                                               var _loc14_:* = §§pop();
                                                               §§push(0 - _loc7_[_loc9_]);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc15_:* = §§pop();
                                                               §§push(0 - _loc7_[_loc10_]);
                                                               if(_loc27_ || param2)
                                                               {
                                                                  §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                                  if(!(_loc28_ && param1))
                                                                  {
                                                                     addr553:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc16_:* = §§pop();
                                                                  §§push(§§findproperty(b2Vec2));
                                                                  §§push(this.§8S§[_loc9_].x * (1 - _loc15_));
                                                                  if(_loc27_ || this)
                                                                  {
                                                                     §§push(this.§8S§[_loc13_].x * _loc15_);
                                                                     if(_loc27_ || param2)
                                                                     {
                                                                        addr587:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(this.§8S§[_loc9_].y * (1 - _loc15_));
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(§§pop() + this.§8S§[_loc13_].y * _loc15_);
                                                                        }
                                                                     }
                                                                     var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                     §§push(§§findproperty(b2Vec2));
                                                                     §§push(this.§8S§[_loc10_].x * (1 - _loc16_));
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(this.§8S§[_loc14_].x * _loc16_);
                                                                        if(_loc27_)
                                                                        {
                                                                           addr631:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(this.§8S§[_loc10_].y * (1 - _loc16_));
                                                                           if(_loc27_)
                                                                           {
                                                                              addr642:
                                                                              §§push(§§pop() + this.§8S§[_loc14_].y * _loc16_);
                                                                           }
                                                                           var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                           var _loc19_:* = Number(0);
                                                                           var _loc20_:b2Vec2 = new b2Vec2();
                                                                           var _loc21_:b2Vec2 = this.§8S§[_loc13_];
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(_loc13_);
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr674:
                                                                                    _loc12_ = §§pop();
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          addr946:
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr967:
                                                                                                   param4.SetV(b2Math.§=&§(param3,_loc20_));
                                                                                                   §§push(_loc19_);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(_loc27_ || param3)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() % this.§+!U§);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr974);
                                                                                                         }
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc27_ || param3)
                                                                                                         {
                                                                                                            addr706:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               addr709:
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(!(_loc27_ || param1))
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               addr717:
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc28_ && param3)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc28_ && param1)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc22_ = _loc18_;
                                                                                                               if(!(_loc28_ && this))
                                                                                                               {
                                                                                                                  addr750:
                                                                                                                  §§push(0.5);
                                                                                                                  if(_loc27_ || param2)
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
                                                                                                                              addr774:
                                                                                                                              §§push(_loc22_.y);
                                                                                                                              if(_loc27_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(_loc17_.y);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          addr793:
                                                                                                                                          §§push(_loc21_.y);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             addr797:
                                                                                                                                             §§push(_loc17_.y);
                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   addr809:
                                                                                                                                                   §§push(_loc22_.x);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr817:
                                                                                                                                                   §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                   if(!(_loc28_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr825:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr831:
                                                                                                                                                            _loc25_ = §§pop();
                                                                                                                                                            if(!(_loc28_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  addr935:
                                                                                                                                                                  §§push(§§pop() + _loc25_);
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                               loop17:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr891:
                                                                                                                                                                  addr889:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                     §§push(_loc20_.x);
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc25_);
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_.x);
                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc21_.x);
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr924:
                                                                                                                                                                                 addr930:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc27_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc22_.x);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr927:
                                                                                                                                                                                    §§push(§§pop() / 3);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                 do
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                    §§push(_loc20_.y);
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc25_);
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc17_.y);
                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_.y);
                                                                                                                                                                                          if(!(_loc28_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr873:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc22_.y);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr878:
                                                                                                                                                                                                §§push(§§pop() + §§pop() / 3);
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr878);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr873);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr878);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(§§pop().y = §§pop(), _loc28_);
                                                                                                                                                                                 
                                                                                                                                                                                 if(!(_loc28_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop17;
                                                                                                                                                                                 addr931:
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr924);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr927);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr930);
                                                                                                                                                                  }
                                                                                                                                                                  while(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr891);
                                                                                                                                                                     §§goto(addr924);
                                                                                                                                                                  }
                                                                                                                                                                  _loc21_ = _loc22_;
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr931);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr935);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr831);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr935);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr817);
                                                                                                                                             §§push(§§pop() - _loc17_.x);
                                                                                                                                          }
                                                                                                                                          §§goto(addr809);
                                                                                                                                       }
                                                                                                                                       §§goto(addr825);
                                                                                                                                    }
                                                                                                                                    §§goto(addr797);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr809);
                                                                                                                           }
                                                                                                                           §§goto(addr793);
                                                                                                                        }
                                                                                                                        §§goto(addr809);
                                                                                                                     }
                                                                                                                     §§goto(addr774);
                                                                                                                  }
                                                                                                                  §§goto(addr831);
                                                                                                               }
                                                                                                               §§goto(addr889);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc22_ = this.§8S§[_loc12_];
                                                                                                            }
                                                                                                            §§goto(addr750);
                                                                                                         }
                                                                                                         §§goto(addr717);
                                                                                                      }
                                                                                                      §§goto(addr709);
                                                                                                   }
                                                                                                   §§goto(addr706);
                                                                                                }
                                                                                                addr974:
                                                                                                return §§pop();
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    _loc20_.§-!&§(1 / _loc19_);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr967);
                                                                                 }
                                                                                 §§goto(addr946);
                                                                              }
                                                                              §§goto(addr674);
                                                                           }
                                                                           §§goto(addr967);
                                                                        }
                                                                        §§goto(addr642);
                                                                     }
                                                                     §§goto(addr631);
                                                                  }
                                                                  §§goto(addr587);
                                                               }
                                                               §§goto(addr553);
                                                            }
                                                            break;
                                                         }
                                                         §§push(this.§+!U§);
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc27_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc27_)
                                                               {
                                                                  §§goto(addr462);
                                                               }
                                                               §§goto(addr396);
                                                            }
                                                            §§goto(addr470);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                      addr467:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc27_)
                                                      {
                                                      }
                                                      §§goto(addr470);
                                                   }
                                                   §§goto(addr396);
                                                default:
                                                   break;
                                                case 0:
                                                   addr287:
                                                   if(_loc11_)
                                                   {
                                                      if(!_loc28_)
                                                      {
                                                         _loc24_ = new b2MassData();
                                                         if(_loc27_)
                                                         {
                                                            this.ComputeMass(_loc24_,1);
                                                         }
                                                         param4.SetV(b2Math.§=&§(param3,_loc24_.§`C§));
                                                         return _loc24_.§[]§;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(!(_loc28_ && this))
                                                      {
                                                         addr334:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr399);
                                             }
                                             addr463:
                                             §§push(_loc9_);
                                             if(_loc27_)
                                             {
                                                addr466:
                                                §§goto(addr467);
                                                §§push(1);
                                             }
                                             §§goto(addr474);
                                          }
                                          §§goto(addr466);
                                       }
                                       addr446:
                                       §§push(1);
                                       if(_loc27_ || param3)
                                       {
                                       }
                                       §§goto(addr459);
                                    }
                                    §§push(1);
                                    if(_loc27_)
                                    {
                                       addr445:
                                       if(§§pop() === _loc26_)
                                       {
                                          §§goto(addr446);
                                       }
                                       §§push(2);
                                    }
                                    §§goto(addr459);
                                 }
                                 §§goto(addr445);
                              }
                              §§goto(addr440);
                           }
                           §§goto(addr432);
                        }
                        §§goto(addr466);
                        addr284:
                     }
                     §§goto(addr463);
                  }
                  else
                  {
                     _loc7_[_loc12_] = b2Math.§<"E§(_loc5_,this.§8S§[_loc12_]) - _loc6_;
                     while(true)
                     {
                        §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                        if(_loc27_ || param3)
                        {
                           _loc23_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(_loc12_);
                              if(_loc27_)
                              {
                                 §§push(0);
                                 if(_loc27_ || param2)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc27_)
                                       {
                                          §§push(_loc23_);
                                          loop3:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc28_ && this))
                                                {
                                                   §§push(_loc11_);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(_loc12_);
                                                            if(_loc27_ || this)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     addr227:
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        _loc8_++;
                                                                        if(_loc27_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr95:
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc23_);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!(_loc27_ || this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 addr107:
                                                                                 if(!(_loc27_ || param2))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 _loc11_ = §§pop();
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    if(!(_loc27_ || this))
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    _loc12_++;
                                                                                    if(_loc27_ || param1)
                                                                                    {
                                                                                       addr79:
                                                                                       if(!(_loc28_ && param1))
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       addr129:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc27_ || this)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop8;
                                                                                          §§goto(addr79);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr380:
                                                                                 }
                                                                                 §§goto(addr399);
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                           addr137:
                                                                        }
                                                                        §§goto(addr380);
                                                                     }
                                                                  }
                                                                  addr226:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr369);
                                                               }
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         addr214:
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                }
                                                §§goto(addr380);
                                             }
                                             else
                                             {
                                                §§push(_loc11_);
                                             }
                                             §§goto(addr141);
                                          }
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr467);
                              }
                              break;
                           }
                           §§goto(addr462);
                        }
                     }
                  }
                  §§goto(addr287);
               }
               §§goto(addr349);
            }
            break;
         }
         _loc9_ = §§pop();
         if(!_loc28_)
         {
            §§goto(addr380);
         }
         §§goto(addr463);
      }
      
      public function §`!E§() : int
      {
         return this.§+!U§;
      }
      
      public function §`!b§() : Vector.<b2Vec2>
      {
         return this.§8S§;
      }
      
      public function §>U§() : Vector.<b2Vec2>
      {
         return this.§<d§;
      }
      
      public function §>!S§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§8S§[0].x * param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.§8S§[0].y * param1.y);
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
            if(_loc6_ || _loc3_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  if(§§pop() >= this.§+!U§)
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           addr87:
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr167:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                           addr166:
                        }
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                                 break;
                              }
                              addr161:
                              loop3:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr162:
                                 while(§§pop() > §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr166);
                                    §§push(_loc4_);
                                    continue loop3;
                                 }
                                 addr92:
                                 _loc4_++;
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        _loc3_ = §§pop();
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     §§push(this.§8S§[_loc4_].x * param1.x);
                     if(!_loc7_)
                     {
                        §§push(this.§8S§[_loc4_].y * param1.y);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc7_ && this))
                           {
                              addr139:
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr161);
                                 }
                              }
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr139);
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr87);
         }
         return §§pop();
      }
      
      public function §;d§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§8S§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§8S§[0].y * param1.y);
            if(_loc7_ || _loc2_)
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
               if(§§pop() >= this.§+!U§)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc7_ || this)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && this))
                           {
                              addr184:
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr184:
                           }
                           §§goto(addr184);
                        }
                        addr165:
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc6_)
                        {
                           addr163:
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              addr164:
                              addr97:
                              while(§§pop() > §§pop())
                              {
                                 §§goto(addr165);
                              }
                              loop3:
                              while(true)
                              {
                                 _loc4_++;
                                 addr99:
                                 while(true)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                           }
                           addr163:
                        }
                        if(!_loc6_)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr117);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr163);
                                 }
                                 addr162:
                              }
                              §§goto(addr164);
                           }
                           addr159:
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr99);
               }
               else
               {
                  §§push(this.§8S§[_loc4_].x * param1.x);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(this.§8S§[_loc4_].y * param1.y);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || this)
                        {
                           §§goto(addr159);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr162);
                  }
               }
               §§goto(addr163);
            }
            §§goto(addr184);
         }
         return this.§8S§[_loc2_];
      }
      
      private function §,E§() : Boolean
      {
         return false;
      }
      
      private function §"#§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§8S§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc3_ || param1)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     this.§<d§[_loc2_] = new b2Vec2();
                     addr89:
                  }
                  _loc2_++;
               }
               continue;
            }
            this.§8S§[_loc2_] = new b2Vec2();
            §§goto(addr89);
         }
      }
   }
}
