package §_-Kt§
{
   import §_-Iw§.*;
   import §_-Ja§.*;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §_-iq§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-iq§ = new b2Mat22();
         }
      }
      
      b2internal var §_-5h§:b2Vec2;
      
      b2internal var §_-Ui§:Vector.<b2Vec2>;
      
      b2internal var §_-3s§:Vector.<b2Vec2>;
      
      b2internal var §_-Wz§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_)
            {
               §§goto(addr24);
            }
            §§goto(addr48);
         }
         addr24:
         §_-Sj§ = b2internal::_-6T;
         this.§_-5h§ = new b2Vec2();
         if(!_loc2_)
         {
            this.§_-Ui§ = new Vector.<b2Vec2>();
            if(!_loc2_)
            {
               this.§_-3s§ = new Vector.<b2Vec2>();
               addr48:
            }
            §_-Q2§ = b2Settings.b2_polygonRadius;
         }
         this.§_-5h§.§_-0a§();
      }
      
      public static function §_-25§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§_-tU§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-c-§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§_-3b§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-5V§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || b2PolygonShape)
         {
            _loc3_.§_-vp§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-nF§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§_-MP§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §_-Je§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§_-tr§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-iW§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(_loc17_ || param1)
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
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!(_loc18_ && _loc3_))
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               §§push(_loc9_.x);
               if(!(_loc18_ && param2))
               {
                  _loc11_ = §§pop() - _loc5_;
                  §§push(Number(_loc9_.y - _loc6_));
                  if(_loc17_ || b2PolygonShape)
                  {
                     _loc12_ = §§pop();
                     if(!_loc18_)
                     {
                        §§push(_loc10_.x);
                        if(!(_loc18_ && param1))
                        {
                           _loc13_ = §§pop() - _loc5_;
                           if(!_loc18_)
                           {
                              §§push(_loc10_.y);
                              if(_loc17_)
                              {
                                 _loc14_ = §§pop() - _loc6_;
                                 §§push(_loc11_);
                                 if(!(_loc18_ && _loc3_))
                                 {
                                    §§push(_loc14_);
                                    if(_loc17_ || _loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc18_ && _loc3_))
                                       {
                                          addr189:
                                          addr212:
                                          addr213:
                                          §§push(_loc12_);
                                          if(_loc17_ || b2PolygonShape)
                                          {
                                             addr201:
                                             _loc15_ = §§pop() - §§pop() * _loc13_;
                                             §§push(0.5);
                                             §§push(_loc15_);
                                             if(!_loc18_)
                                             {
                                                addr207:
                                                _loc16_ = §§pop() * §§pop();
                                                §§push(_loc4_);
                                                §§push(_loc16_);
                                                addr206:
                                             }
                                          }
                                          _loc4_ = Number(§§pop() + §§pop());
                                          addr214:
                                          _loc3_.§_-Jv§(new b2Vec2(_loc5_,_loc6_));
                                          if(!(_loc18_ && b2PolygonShape))
                                          {
                                             _loc3_.§_-Jv§(_loc9_);
                                             if(_loc17_)
                                             {
                                                _loc3_.§_-Jv§(_loc10_);
                                             }
                                          }
                                          §§push(_loc3_);
                                          §§push(_loc16_);
                                          if(!(_loc18_ && param1))
                                          {
                                             §§push(§§pop() * _loc7_);
                                          }
                                          §§pop().§_-6z§(§§pop());
                                          if(!_loc18_)
                                          {
                                             _loc8_++;
                                          }
                                          continue;
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr212);
               }
               §§goto(addr213);
            }
            §§goto(addr92);
         }
         if(!(_loc18_ && param1))
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
               addr277:
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
         §§goto(addr277);
      }
      
      b2internal static function §_-sW§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc4_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = 0;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(!_loc26_)
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(_loc27_ || b2PolygonShape)
               {
                  addr92:
                  _loc5_[param3] = _loc5_[0];
                  break;
               }
               break;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            if(_loc27_)
            {
               _loc4_++;
               if(!_loc26_)
               {
                  continue;
               }
               §§goto(addr92);
            }
            break;
         }
         var _loc6_:Number = Number.MAX_VALUE;
         if(_loc27_ || b2PolygonShape)
         {
            §§push(1);
            if(!(_loc26_ && param3))
            {
               _loc4_ = §§pop();
               if(!_loc26_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr777:
               }
               §§goto(addr780);
            }
            loop2:
            for(; §§pop() <= param3; §§goto(addr777))
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               _loc8_ = _loc5_[_loc4_].x - _loc7_.x;
               if(!_loc26_)
               {
                  §§push(_loc5_[_loc4_].y - _loc7_.y);
                  if(_loc27_)
                  {
                     _loc9_ = Number(§§pop());
                     if(_loc27_ || param3)
                     {
                        _loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
                        §§push(_loc8_);
                        §§push(_loc10_);
                        if(!_loc26_)
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc26_)
                           {
                              _loc8_ = §§pop();
                              if(_loc27_)
                              {
                                 §§push(_loc9_);
                                 if(!(_loc26_ && b2PolygonShape))
                                 {
                                    §§push(_loc10_);
                                    if(!_loc26_)
                                    {
                                       §§push(Number(§§pop() / §§pop()));
                                       if(_loc27_ || b2PolygonShape)
                                       {
                                          §§push(§§pop());
                                          if(_loc27_)
                                          {
                                             _loc9_ = §§pop();
                                             §§push(-§§pop());
                                             if(_loc27_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc26_)
                                                {
                                                   _loc11_ = §§pop();
                                                   §§push(_loc8_);
                                                   if(!_loc26_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc27_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(!_loc26_)
                                                         {
                                                            addr224:
                                                            _loc13_ = Number.MAX_VALUE;
                                                            if(_loc27_)
                                                            {
                                                               _loc14_ = Number(Number.MAX_VALUE);
                                                               §§push(-Number.MAX_VALUE);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc26_ && param1))
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     if(!_loc26_)
                                                                     {
                                                                        _loc16_ = Number(-Number.MAX_VALUE);
                                                                        §§push(0);
                                                                        if(_loc27_ || param3)
                                                                        {
                                                                           _loc17_ = §§pop();
                                                                           if(!_loc26_)
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 addr423:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < param3)
                                                                                    {
                                                                                       §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc26_ && param1))
                                                                                             {
                                                                                                _loc19_ = §§pop();
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                      if(_loc27_ || param3)
                                                                                                      {
                                                                                                         addr299:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc20_ = §§pop();
                                                                                                            §§push(_loc8_);
                                                                                                            if(!(_loc26_ && b2PolygonShape))
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc19_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr313:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        if(_loc27_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                           if(_loc27_ || b2PolygonShape)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc21_ = §§pop();
                                                                                                                                 §§push(_loc11_);
                                                                                                                              }
                                                                                                                              addr333:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc19_);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              §§push(_loc12_);
                                                                                                                              §§push(_loc20_);
                                                                                                                              if(_loc27_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                       §§push(_loc21_);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc13_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc21_);
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                   addr365:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(_loc27_ || b2PolygonShape)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(_loc26_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     addr396:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        addr397:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > _loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              addr421:
                                                                                                                                                                              if(_loc27_ || b2PolygonShape)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr410:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr466);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr409:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr544);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc17_++;
                                                                                                                                                                                 continue loop11;
                                                                                                                                                                              }
                                                                                                                                                                              addr421:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                              addr414:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() > _loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr417:
                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                       §§goto(addr421);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr450);
                                                                                                                                                                                    addr417:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr421);
                                                                                                                                                                                 continue loop14;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr396:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr502);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr430);
                                                                                                                                                               addr378:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr466);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr396);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr450);
                                                                                                                                                   addr365:
                                                                                                                                                }
                                                                                                                                                §§goto(addr397);
                                                                                                                                             }
                                                                                                                                             §§goto(addr365);
                                                                                                                                          }
                                                                                                                                          addr359:
                                                                                                                                       }
                                                                                                                                       §§goto(addr417);
                                                                                                                                    }
                                                                                                                                    §§goto(addr544);
                                                                                                                                 }
                                                                                                                                 addr350:
                                                                                                                              }
                                                                                                                              §§goto(addr561);
                                                                                                                           }
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        §§goto(addr462);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr438);
                                                                                                                  addr313:
                                                                                                               }
                                                                                                               §§goto(addr378);
                                                                                                            }
                                                                                                            §§goto(addr397);
                                                                                                         }
                                                                                                         addr299:
                                                                                                      }
                                                                                                      §§goto(addr417);
                                                                                                   }
                                                                                                   addr285:
                                                                                                }
                                                                                                §§goto(addr396);
                                                                                             }
                                                                                             §§goto(addr414);
                                                                                          }
                                                                                          addr274:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr430:
                                                                                       §§push(_loc15_ - _loc13_);
                                                                                       §§push(_loc16_);
                                                                                       if(!(_loc26_ && param3))
                                                                                       {
                                                                                          addr438:
                                                                                          §§push(_loc14_);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§push(§§pop() * (§§pop() - §§pop()));
                                                                                             if(!(_loc26_ && param3))
                                                                                             {
                                                                                                addr450:
                                                                                                §§push(_loc18_ = §§pop());
                                                                                                §§push(0.95);
                                                                                                §§push(_loc6_);
                                                                                                if(!(_loc26_ && param3))
                                                                                                {
                                                                                                   addr462:
                                                                                                   if(§§pop() < §§pop() * §§pop())
                                                                                                   {
                                                                                                      addr502:
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr466:
                                                                                                         §§push(_loc18_);
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(param1.R);
                                                                                                      if(!(_loc26_ && param1))
                                                                                                      {
                                                                                                         addr513:
                                                                                                         §§pop().col1.y = _loc9_;
                                                                                                         §§push(param1.R);
                                                                                                         if(_loc27_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop().col2);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  §§push(param1.R);
                                                                                                                  if(_loc27_ || b2PolygonShape)
                                                                                                                  {
                                                                                                                     addr541:
                                                                                                                     §§pop().col2.y = _loc12_;
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        addr544:
                                                                                                                        §§push(0.5);
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                        {
                                                                                                                           addr553:
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                           {
                                                                                                                              addr561:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop() * §§pop()));
                                                                                                                                 if(!(_loc26_ && b2PolygonShape))
                                                                                                                                 {
                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                    if(_loc26_ && param3)
                                                                                                                                    {
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    §§push(0.5);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       addr586:
                                                                                                                                       §§push(Number(§§pop() * (_loc14_ + _loc16_)));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 _loc24_ = §§pop();
                                                                                                                                 if(!(_loc27_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 addr599:
                                                                                                                                 _loc25_ = param1.R;
                                                                                                                                 addr597:
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.center);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_.x);
                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc25_.col1);
                                                                                                                                          if(_loc27_ || b2PolygonShape)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc23_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      addr634:
                                                                                                                                                      §§push(_loc25_.col2);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            addr641:
                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr660:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        addr663:
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           addr673:
                                                                                                                                                                           §§push(param1.center);
                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                           if(_loc27_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              addr682:
                                                                                                                                                                              §§push(_loc25_.col1.y);
                                                                                                                                                                              if(_loc27_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr692:
                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr695:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr700:
                                                                                                                                                                                       §§push(_loc25_.col2.y);
                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr712:
                                                                                                                                                                                       §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                       addr711:
                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.§_-fb§);
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             if(_loc27_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr754:
                                                                                                                                                                                                               §§push(param1.§_-fb§);
                                                                                                                                                                                                               §§push(0.5);
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr757:
                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                  if(_loc27_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr774:
                                                                                                                                                                                                                     §§push(§§pop() * (§§pop() - _loc14_));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr774);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               addr776:
                                                                                                                                                                                                               _loc4_++;
                                                                                                                                                                                                               continue loop2;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr776);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr757);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr774);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr757);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr754);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr711);
                                                                                                                                                                                 §§push(§§pop() * _loc24_);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr711);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr712);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr754);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr682);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr692);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr712);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr692);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr695);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr700);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr660);
                                                                                                                                                }
                                                                                                                                                §§goto(addr641);
                                                                                                                                             }
                                                                                                                                             §§goto(addr634);
                                                                                                                                          }
                                                                                                                                          §§goto(addr682);
                                                                                                                                       }
                                                                                                                                       §§goto(addr663);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr673);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr586);
                                                                                                                     }
                                                                                                                     §§goto(addr597);
                                                                                                                  }
                                                                                                                  §§goto(addr599);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr541);
                                                                                                         }
                                                                                                         addr512:
                                                                                                         addr511:
                                                                                                      }
                                                                                                      §§goto(addr541);
                                                                                                   }
                                                                                                   §§goto(addr754);
                                                                                                }
                                                                                                §§goto(addr586);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr586);
                                                                                       }
                                                                                       §§goto(addr553);
                                                                                    }
                                                                                    §§goto(addr544);
                                                                                    §§goto(addr450);
                                                                                 }
                                                                                 _loc6_ = §§pop();
                                                                                 if(_loc26_ && param2)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(param1.R);
                                                                                 if(_loc27_ || b2PolygonShape)
                                                                                 {
                                                                                    §§push(§§pop().col1);
                                                                                    if(_loc27_ || param2)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc26_ && b2PolygonShape))
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr513);
                                                                                    }
                                                                                    §§goto(addr512);
                                                                                 }
                                                                                 §§goto(addr511);
                                                                              }
                                                                           }
                                                                           §§goto(addr599);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr421);
                                                         }
                                                         §§goto(addr365);
                                                      }
                                                      §§goto(addr410);
                                                   }
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr450);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr333);
                                    }
                                    §§goto(addr438);
                                 }
                                 §§goto(addr409);
                              }
                              §§goto(addr430);
                           }
                           §§goto(addr299);
                        }
                        §§goto(addr359);
                     }
                     §§goto(addr513);
                  }
                  §§goto(addr313);
               }
               §§goto(addr421);
            }
         }
         addr780:
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc2_ || _loc2_)
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
         if(_loc5_ || _loc3_)
         {
            super.Set(param1);
            if(!_loc4_)
            {
               if(param1 is b2PolygonShape)
               {
                  addr35:
                  _loc2_ = param1 as b2PolygonShape;
                  if(_loc5_)
                  {
                     this.§_-5h§.SetV(_loc2_.§_-5h§);
                     if(_loc5_)
                     {
                        addr49:
                        this.§_-Wz§ = _loc2_.§_-Wz§;
                        if(!(_loc4_ && this))
                        {
                           this.§_-HZ§(this.§_-Wz§);
                           if(_loc5_)
                           {
                              addr73:
                              _loc3_ = 0;
                           }
                           while(_loc3_ < this.§_-Wz§)
                           {
                              this.§_-Ui§[_loc3_].SetV(_loc2_.§_-Ui§[_loc3_]);
                              if(_loc5_ || _loc3_)
                              {
                                 this.§_-3s§[_loc3_].SetV(_loc2_.§_-3s§[_loc3_]);
                                 if(_loc4_ && param1)
                                 {
                                    break;
                                 }
                              }
                              _loc3_++;
                              if(!(_loc5_ || this))
                              {
                                 break;
                              }
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr49);
               }
               addr128:
               return;
            }
         }
         §§goto(addr35);
      }
      
      public function §_-tU§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(_loc8_ || param1)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc8_ || _loc3_)
         {
            this.§_-3b§(_loc3_,param2);
         }
      }
      
      public function §_-3b§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
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
            if(_loc7_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc8_)
                  {
                     addr34:
                     param2 = param1.length;
                     if(!(_loc8_ && this))
                     {
                        addr42:
                        b2Settings.b2Assert(2 <= param2);
                        if(_loc7_)
                        {
                           this.§_-Wz§ = param2;
                        }
                     }
                     addr57:
                     loop0:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(this.§_-Wz§);
                           if(_loc7_ || this)
                           {
                              if(§§pop() < §§pop())
                              {
                                 continue;
                              }
                              §§push(0);
                              if(_loc7_ || param1)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr220:
                                       while(true)
                                       {
                                          §§push(this.§_-Wz§);
                                          addr229:
                                          addr160:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                this.§_-5h§ = §_-iW§(this.§_-Ui§,this.§_-Wz§);
                                                return;
                                             }
                                             §§push(_loc3_);
                                             if(_loc7_)
                                             {
                                                §§push(int(§§pop()));
                                                if(!(_loc8_ && param1))
                                                {
                                                   _loc4_ = §§pop();
                                                   §§push(_loc3_);
                                                   if(_loc7_)
                                                   {
                                                      break loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr162:
                                                      while(true)
                                                      {
                                                         _loc6_ = b2Math.§_-TD§(this.§_-Ui§[_loc5_],this.§_-Ui§[_loc4_]);
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            b2Settings.b2Assert(_loc6_.§_-Un§() > Number.MIN_VALUE);
                                                            if(_loc7_ || param1)
                                                            {
                                                               this.§_-3s§[_loc3_].SetV(b2Math.§_-a4§(_loc6_,1));
                                                               if(_loc8_ && param1)
                                                               {
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                         this.§_-3s§[_loc3_].Normalize();
                                                         if(!_loc8_)
                                                         {
                                                            _loc3_++;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   addr161:
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          addr160:
                                          while(true)
                                          {
                                             §§goto(addr161);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr162);
                              }
                              while(true)
                              {
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr155:
                                       while(true)
                                       {
                                          §§goto(addr160);
                                       }
                                    }
                                    addr154:
                                 }
                                 §§goto(addr229);
                              }
                           }
                           §§goto(addr154);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(1);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_ || param1)
                           {
                              if(§§pop() < this.§_-Wz§)
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc8_)
                                    {
                                       §§goto(addr151);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr162);
                              }
                              else
                              {
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr229);
                     }
                  }
                  this.§_-HZ§(param2);
                  _loc3_ = 0;
                  §§goto(addr57);
               }
               §§goto(addr42);
            }
         }
         §§goto(addr34);
      }
      
      public function §_-vp§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§_-Wz§ = 4;
         if(_loc4_)
         {
            this.§_-HZ§(4);
            this.§_-Ui§[0].Set(-param1,-param2);
            if(!(_loc3_ && param1))
            {
               this.§_-Ui§[1].Set(param1,-param2);
               if(_loc4_)
               {
                  this.§_-Ui§[2].Set(param1,param2);
                  this.§_-Ui§[3].Set(-param1,param2);
                  if(!_loc3_)
                  {
                     this.§_-3s§[0].Set(0,-1);
                     this.§_-3s§[1].Set(1,0);
                     if(!_loc3_)
                     {
                        this.§_-3s§[2].Set(0,1);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr116);
                     }
                  }
                  this.§_-3s§[3].Set(-1,0);
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr116);
               }
               this.§_-5h§.§_-0a§();
            }
         }
         addr116:
      }
      
      public function §_-MP§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§_-Wz§ = 4;
            if(_loc7_ || param2)
            {
               this.§_-HZ§(4);
               this.§_-Ui§[0].Set(-param1,-param2);
               this.§_-Ui§[1].Set(param1,-param2);
               addr45:
               this.§_-Ui§[2].Set(param1,param2);
               if(_loc7_)
               {
                  this.§_-Ui§[3].Set(-param1,param2);
                  if(_loc7_ || this)
                  {
                     this.§_-3s§[0].Set(0,-1);
                     this.§_-3s§[1].Set(1,0);
                     if(!_loc8_)
                     {
                        addr92:
                        this.§_-3s§[2].Set(0,1);
                        addr99:
                        this.§_-3s§[3].Set(-1,0);
                        addr106:
                        this.§_-5h§ = param3;
                     }
                     var _loc5_:b2Transform;
                     (_loc5_ = new b2Transform()).position = param3;
                     if(!(_loc8_ && this))
                     {
                        _loc5_.R.Set(param4);
                     }
                     var _loc6_:int = 0;
                     while(_loc6_ < this.§_-Wz§)
                     {
                        this.§_-Ui§[_loc6_] = b2Math.§_-Y9§(_loc5_,this.§_-Ui§[_loc6_]);
                        if(!_loc8_)
                        {
                           this.§_-3s§[_loc6_] = b2Math.§_-FP§(_loc5_.R,this.§_-3s§[_loc6_]);
                           if(_loc8_ && param2)
                           {
                              continue;
                           }
                        }
                        _loc6_++;
                        if(_loc8_ && param3)
                        {
                           break;
                        }
                     }
                     return;
                  }
                  §§goto(addr106);
               }
               §§goto(addr92);
            }
            §§goto(addr99);
         }
         §§goto(addr45);
      }
      
      public function §_-tr§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§_-Wz§ = 2;
            this.§_-HZ§(2);
            this.§_-Ui§[0].SetV(param1);
            this.§_-Ui§[1].SetV(param2);
            if(!(_loc4_ && param1))
            {
               §§push(this.§_-5h§);
               if(!(_loc4_ && param2))
               {
                  §§push(0.5);
                  if(!(_loc4_ && param1))
                  {
                     §§push(param1.x);
                     if(!_loc4_)
                     {
                        §§push(param2.x);
                        if(_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 §§goto(addr88);
                              }
                              §§goto(addr94);
                           }
                        }
                     }
                     §§goto(addr106);
                  }
                  addr88:
                  §§pop().x = §§pop();
                  §§goto(addr91);
               }
               addr91:
               §§push(this.§_-5h§);
               §§push(0.5);
               if(!_loc4_)
               {
                  addr94:
                  §§push(param1.y);
                  if(!(_loc4_ && param1))
                  {
                     addr106:
                     §§push(§§pop() * (§§pop() + param2.y));
                  }
                  §§goto(addr106);
               }
               §§pop().y = §§pop();
               §§goto(addr108);
            }
            addr108:
            this.§_-3s§[0] = b2Math.§_-a4§(b2Math.§_-TD§(param2,param1),1);
            §§goto(addr119);
         }
         addr119:
         this.§_-3s§[0].Normalize();
         if(_loc3_)
         {
            this.§_-3s§[1].x = -this.§_-3s§[0].x;
            if(!(_loc4_ && this))
            {
               this.§_-3s§[1].y = -this.§_-3s§[0].y;
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
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(!(_loc11_ && param1))
         {
            §§push(§§pop() - param1.position.y);
            if(_loc12_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(_loc12_ || param1)
         {
            §§push(_loc4_.col1.x);
            if(!_loc11_)
            {
               §§push(§§pop() * §§pop());
               if(_loc12_ || param2)
               {
                  §§push(_loc6_);
                  if(!(_loc11_ && this))
                  {
                     addr86:
                     §§push(§§pop() * _loc4_.col1.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc11_ && this))
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(_loc12_ || _loc3_)
               {
                  §§push(_loc4_.col2.x);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc12_ || param1)
                     {
                        §§push(_loc6_);
                        if(_loc12_)
                        {
                           addr124:
                           §§push(§§pop() * _loc4_.col2.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc11_)
                        {
                           addr131:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§_-Wz§)
                           {
                              return true;
                           }
                           _loc3_ = this.§_-Ui§[_loc9_];
                           if(!(_loc11_ && param2))
                           {
                              §§push(_loc7_);
                              if(!(_loc11_ && param2))
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc11_ && param1))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc11_ && param2))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc12_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc12_ || _loc3_)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc11_)
                                             {
                                                addr198:
                                                §§push(§§pop() - _loc3_.y);
                                                if(_loc11_ && _loc3_)
                                                {
                                                }
                                                addr207:
                                                _loc6_ = §§pop();
                                                addr208:
                                                _loc3_ = this.§_-3s§[_loc9_];
                                                if(!(_loc12_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc3_.x);
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_)
                                                      {
                                                         addr236:
                                                         §§push(_loc3_.y);
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            addr245:
                                                            §§push(§§pop() * _loc6_);
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               addr254:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  addr257:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        addr268:
                                                                        _loc10_ = §§pop();
                                                                        addr269:
                                                                        §§push(0);
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
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr236);
                                             }
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr207);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr207);
                                 }
                              }
                           }
                           §§goto(addr198);
                        }
                        return false;
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr124);
               }
               §§goto(addr131);
            }
            §§goto(addr86);
         }
         §§goto(addr98);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         §§push(0);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§_-fa§);
         if(_loc21_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc20_ && this))
         {
            §§push(param2.p1);
            if(!_loc20_)
            {
               §§push(§§pop().x);
               if(_loc21_)
               {
                  §§push(param3.position);
                  if(!_loc20_)
                  {
                     §§push(§§pop().x);
                     if(_loc21_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc20_)
                           {
                              _loc6_ = §§pop();
                              if(_loc21_)
                              {
                                 addr76:
                                 §§push(param2.p1.y);
                                 if(_loc21_)
                                 {
                                    addr82:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc20_ && param2))
                                    {
                                       addr90:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                                 addr92:
                                 _loc8_ = param3.R;
                                 §§push(_loc6_);
                                 if(_loc21_ || this)
                                 {
                                    §§push(_loc8_.col1.x);
                                    if(_loc21_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc20_ && param2))
                                       {
                                          §§push(_loc7_);
                                          if(_loc21_ || this)
                                          {
                                             addr129:
                                             §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                             if(!(_loc20_ && param2))
                                             {
                                                addr137:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr129);
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
                                                addr150:
                                                §§push(_loc7_);
                                                if(_loc21_ || this)
                                                {
                                                   addr158:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc21_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc11_:* = §§pop();
                                             if(!(_loc20_ && param2))
                                             {
                                                §§push(param2.p2);
                                                if(!_loc20_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc21_ || param2)
                                                   {
                                                      §§push(param3.position);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc20_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc21_ || param2)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc21_ || param3)
                                                               {
                                                                  addr209:
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr214:
                                                                     §§push(param2.p2.y);
                                                                     if(_loc21_)
                                                                     {
                                                                        addr220:
                                                                        §§push(§§pop() - param3.position.y);
                                                                        if(_loc21_)
                                                                        {
                                                                           addr224:
                                                                           _loc7_ = Number(§§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                                  _loc8_ = param3.R;
                                                                  §§push(_loc6_);
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§push(_loc8_.col1.x);
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr260:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!(_loc20_ && param3))
                                                                           {
                                                                              §§push(§§pop() * _loc8_.col1.y);
                                                                           }
                                                                        }
                                                                        var _loc12_:Number = §§pop();
                                                                        §§push(_loc6_);
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(_loc8_.col2.x);
                                                                           if(_loc21_ || this)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                                 addr283:
                                                                                 §§push(_loc7_);
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    addr295:
                                                                                    §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(§§pop() - _loc10_);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc14_:* = §§pop();
                                                                              §§push(_loc13_);
                                                                              if(!(_loc20_ && this))
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
                                                                                    §§push(this.§_-Wz§);
                                                                                    if(!(_loc20_ && param2))
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§goto(addr599);
                                                                                          }
                                                                                          §§goto(addr607);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push((_loc9_ = this.§_-Ui§[_loc17_]).x);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc20_ && param3))
                                                                                                   {
                                                                                                      addr353:
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(_loc9_.y);
                                                                                                         if(_loc21_ || param1)
                                                                                                         {
                                                                                                            addr372:
                                                                                                            addr373:
                                                                                                            §§push(§§pop() - _loc11_);
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                            }
                                                                                                            addr382:
                                                                                                            _loc7_ = §§pop();
                                                                                                            §§push((_loc9_ = this.§_-3s§[_loc17_]).x);
                                                                                                            §§push(_loc6_);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        §§push(_loc9_.x);
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(_loc19_ = §§pop() + §§pop() * §§pop());
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc21_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc18_ < 0)
                                                                                                                                       {
                                                                                                                                          addr438:
                                                                                                                                          §§push(false);
                                                                                                                                          if(_loc21_ || param2)
                                                                                                                                          {
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          addr544:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr549:
                                                                                                                                             _loc5_ = Number(_loc18_ / _loc19_);
                                                                                                                                             addr546:
                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                             {
                                                                                                                                                addr557:
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(!(_loc20_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr569:
                                                                                                                                                   if(§§pop() < §§pop() - Number.MIN_VALUE)
                                                                                                                                                   {
                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      _loc17_++;
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr569);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr557);
                                                                                                                                    }
                                                                                                                                    §§goto(addr438);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc20_ && param3))
                                                                                                                                       {
                                                                                                                                          addr471:
                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                          if(!(_loc20_ && param3))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(!(_loc20_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      addr496:
                                                                                                                                                      if(§§pop() < §§pop() * §§pop())
                                                                                                                                                      {
                                                                                                                                                         addr501:
                                                                                                                                                         _loc4_ = Number(_loc18_ / _loc19_);
                                                                                                                                                         addr500:
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         _loc16_ = §§pop();
                                                                                                                                                         §§goto(addr557);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         if(_loc21_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr519:
                                                                                                                                                            §§push(§§pop() > 0);
                                                                                                                                                            if(§§pop() > 0)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(!(_loc20_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        addr540:
                                                                                                                                                                        §§push(§§pop() * _loc19_);
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           addr543:
                                                                                                                                                                           §§goto(addr544);
                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr569);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr546);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr557);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr544);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr557);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr540);
                                                                                                                                                }
                                                                                                                                                §§goto(addr569);
                                                                                                                                             }
                                                                                                                                             §§goto(addr496);
                                                                                                                                          }
                                                                                                                                          §§goto(addr519);
                                                                                                                                       }
                                                                                                                                       §§goto(addr540);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                              §§goto(addr543);
                                                                                                                           }
                                                                                                                           §§goto(addr540);
                                                                                                                        }
                                                                                                                        §§goto(addr569);
                                                                                                                     }
                                                                                                                     §§goto(addr500);
                                                                                                                  }
                                                                                                                  §§goto(addr496);
                                                                                                               }
                                                                                                               §§goto(addr501);
                                                                                                            }
                                                                                                            §§goto(addr471);
                                                                                                         }
                                                                                                         §§goto(addr382);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr372);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr599);
                                                                                 }
                                                                                 addr599:
                                                                                 if(_loc16_ >= 0)
                                                                                 {
                                                                                    if(!(_loc20_ && param2))
                                                                                    {
                                                                                       addr607:
                                                                                       param1.fraction = _loc4_;
                                                                                    }
                                                                                    _loc8_ = param3.R;
                                                                                    _loc9_ = this.§_-3s§[_loc16_];
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(param1.normal);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!(_loc20_ && param3))
                                                                                             {
                                                                                                §§push(_loc9_.x);
                                                                                                if(!(_loc20_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc20_ && param3))
                                                                                                   {
                                                                                                      addr655:
                                                                                                      §§push(_loc8_.col2);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr662:
                                                                                                            §§push(_loc9_.y);
                                                                                                            if(!(_loc20_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc21_ || param3)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc20_ && this))
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        addr694:
                                                                                                                        §§push(param1.normal);
                                                                                                                        §§push(_loc8_.col1.y);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           addr697:
                                                                                                                           §§push(_loc9_.x);
                                                                                                                           if(_loc21_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr706);
                                                                                                                           }
                                                                                                                           §§goto(addr719);
                                                                                                                        }
                                                                                                                        §§goto(addr714);
                                                                                                                     }
                                                                                                                     §§goto(addr733);
                                                                                                                  }
                                                                                                                  §§goto(addr697);
                                                                                                               }
                                                                                                               §§goto(addr706);
                                                                                                            }
                                                                                                            §§goto(addr719);
                                                                                                         }
                                                                                                         addr706:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc20_ && param2))
                                                                                                         {
                                                                                                            addr714:
                                                                                                            §§push(_loc8_.col2.y);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               addr719:
                                                                                                               §§push(§§pop() * _loc9_.y);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            addr733:
                                                                                                            return true;
                                                                                                         }
                                                                                                         §§goto(addr735);
                                                                                                      }
                                                                                                      §§goto(addr714);
                                                                                                   }
                                                                                                   §§goto(addr697);
                                                                                                }
                                                                                                §§goto(addr662);
                                                                                             }
                                                                                             §§goto(addr655);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr694);
                                                                                 }
                                                                                 addr735:
                                                                                 return false;
                                                                              }
                                                                              return false;
                                                                           }
                                                                           §§goto(addr295);
                                                                        }
                                                                        §§goto(addr283);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc20_ && param3)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr224);
                                                }
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr90);
                     }
                  }
               }
               §§goto(addr82);
            }
         }
         §§goto(addr76);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§_-Ui§[0];
         §§push(param2.position.x);
         if(_loc12_ || _loc3_)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc13_ && param1))
            {
               §§push(_loc4_.x);
               if(_loc12_)
               {
                  addr68:
                  §§push(§§pop() * §§pop());
                  if(!_loc13_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!(_loc13_ && this))
                     {
                        §§push(§§pop() * _loc4_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc13_ && _loc3_))
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(_loc12_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc12_ || param1)
                     {
                        §§push(_loc4_.x);
                        if(_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_)
                           {
                              addr100:
                              §§push(_loc3_.col2.y);
                              if(_loc12_ || param1)
                              {
                                 addr110:
                                 §§push(§§pop() * _loc4_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc13_ && param2))
                           {
                              addr122:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc12_ || this)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc6_);
                           if(_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           var _loc9_:int = 1;
                           for(; _loc9_ < this.§_-Wz§; _loc8_ = §§pop(),_loc9_++)
                           {
                              _loc4_ = this.§_-Ui§[_loc9_];
                              §§push(param2.position);
                              if(_loc12_)
                              {
                                 §§push(§§pop().x);
                                 §§push(_loc3_.col1);
                                 if(_loc12_ || this)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc12_ || param2)
                                    {
                                       §§push(_loc4_.x);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc13_ && this))
                                          {
                                             §§push(_loc3_.col2);
                                             if(!(_loc13_ && param1))
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc4_.y);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_ || param2)
                                                      {
                                                         addr208:
                                                         §§push(§§pop() + (§§pop() + §§pop()));
                                                         if(_loc12_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc12_ || param1)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(!_loc13_)
                                                               {
                                                                  addr224:
                                                                  §§push(param2.position.y);
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr236:
                                                                     §§push(_loc3_.col1.y);
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(_loc4_.x);
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           addr258:
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(_loc3_.col2.y);
                                                                           if(_loc12_)
                                                                           {
                                                                              addr254:
                                                                              §§push(§§pop() * _loc4_.y);
                                                                           }
                                                                           §§push(§§pop() + (§§pop() + §§pop()));
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    addr279:
                                                                                    §§push(_loc5_ < _loc10_);
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc12_ || _loc3_)
                                                                                          {
                                                                                             addr307:
                                                                                             _loc5_ = Number(Number(§§pop()));
                                                                                             §§push(_loc6_);
                                                                                             §§push(_loc11_);
                                                                                             if(!(_loc13_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr325:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc13_ && param1))
                                                                                                      {
                                                                                                         addr343:
                                                                                                         _loc6_ = Number(§§pop());
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc12_ || param2)
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  addr359:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr360:
                                                                                                                     §§push(Number(_loc7_));
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        addr369:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           addr372:
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           addr376:
                                                                                                                           if(_loc8_ > _loc11_)
                                                                                                                           {
                                                                                                                              addr379:
                                                                                                                              §§push(Number(_loc8_));
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc12_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr364:
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr368:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  §§goto(addr369);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr376);
                                                                                                         }
                                                                                                         §§goto(addr364);
                                                                                                      }
                                                                                                      §§goto(addr368);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr335:
                                                                                                      §§push(Number(_loc11_));
                                                                                                      if(_loc12_ || this)
                                                                                                      {
                                                                                                         §§goto(addr343);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr379);
                                                                                                }
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                             §§goto(addr376);
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(_loc12_ || this)
                                                                                          {
                                                                                             §§goto(addr307);
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr307);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr376);
                                                                        }
                                                                        §§goto(addr254);
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr254);
                                                }
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr224);
                           }
                           if(!_loc13_)
                           {
                              §§push(param1.§_-N-§);
                              if(!(_loc13_ && this))
                              {
                                 §§push(_loc5_);
                                 if(!(_loc13_ && this))
                                 {
                                    §§push(§§pop() - b2internal::_-Q2);
                                    if(_loc12_ || param1)
                                    {
                                       §§pop().x = §§pop();
                                       if(_loc12_)
                                       {
                                          addr429:
                                          §§push(param1.§_-N-§);
                                          §§push(_loc6_);
                                          if(!_loc13_)
                                          {
                                             addr434:
                                             §§pop().y = §§pop() - b2internal::_-Q2;
                                             if(!_loc13_)
                                             {
                                                §§push(param1.§_-TE§);
                                                if(_loc12_ || param2)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc13_)
                                                   {
                                                      §§pop().x = §§pop() + b2internal::_-Q2;
                                                      if(_loc12_)
                                                      {
                                                         addr464:
                                                         param1.§_-TE§.y = _loc8_ + b2internal::_-Q2;
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr464);
                                             }
                                          }
                                          §§goto(addr434);
                                       }
                                       §§goto(addr464);
                                    }
                                 }
                                 §§goto(addr434);
                              }
                           }
                           §§goto(addr429);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr122);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr68);
         }
         §§goto(addr76);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         if(!_loc27_)
         {
            if(this.§_-Wz§ == 2)
            {
               if(_loc28_ || param2)
               {
                  §§push(param1.center);
                  if(!(_loc27_ && param2))
                  {
                     §§push(0.5);
                     if(_loc28_)
                     {
                        §§push(§§pop() * (this.§_-Ui§[0].x + this.§_-Ui§[1].x));
                        if(_loc28_ || param1)
                        {
                           §§goto(addr92);
                        }
                        §§goto(addr103);
                     }
                     addr92:
                     §§pop().x = §§pop();
                     §§goto(addr95);
                  }
                  addr95:
                  §§push(param1.center);
                  §§push(0.5);
                  if(!(_loc27_ && param2))
                  {
                     addr103:
                     §§push(§§pop() * (this.§_-Ui§[0].y + this.§_-Ui§[1].y));
                  }
                  §§pop().y = §§pop();
                  §§goto(addr116);
               }
               §§goto(addr92);
            }
            else
            {
               §§push(0);
               if(_loc28_)
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
               if(_loc28_ || this)
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
               if(!(_loc27_ && this))
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
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§_-Wz§)
               {
                  _loc11_ = this.§_-Ui§[_loc10_];
                  if(_loc28_ || param1)
                  {
                     _loc12_ = _loc10_ + 1 < this.§_-Wz§ ? this.§_-Ui§[int(_loc10_ + 1)] : this.§_-Ui§[0];
                     if(_loc28_)
                     {
                        §§push(_loc11_.x);
                        if(_loc28_ || this)
                        {
                           §§push(Number(§§pop() - _loc7_));
                           if(_loc28_)
                           {
                              _loc13_ = §§pop();
                              §§push(_loc11_.y);
                              if(_loc28_ || _loc3_)
                              {
                                 addr242:
                                 §§push(§§pop() - _loc8_);
                                 if(_loc28_ || this)
                                 {
                                    _loc14_ = §§pop();
                                    if(!_loc27_)
                                    {
                                       §§push(_loc12_.x);
                                       if(_loc28_ || this)
                                       {
                                          §§push(Number(§§pop() - _loc7_));
                                          if(_loc28_)
                                          {
                                             _loc15_ = §§pop();
                                             §§push(_loc12_.y - _loc8_);
                                             if(_loc28_ || param2)
                                             {
                                                _loc16_ = §§pop();
                                                §§push(_loc13_);
                                                if(_loc28_ || _loc3_)
                                                {
                                                   addr293:
                                                   §§push(§§pop() * _loc16_ - _loc14_ * _loc15_);
                                                   if(!(_loc27_ && _loc3_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc27_ && _loc3_))
                                                      {
                                                         _loc17_ = §§pop();
                                                         addr314:
                                                         _loc18_ = 0.5 * _loc17_;
                                                         §§push(_loc5_);
                                                         if(_loc28_ || _loc3_)
                                                         {
                                                            §§push(_loc18_);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc28_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc27_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(_loc28_ || param2)
                                                                     {
                                                                        addr348:
                                                                        §§push(_loc3_);
                                                                        §§push(_loc18_);
                                                                        §§push(_loc9_);
                                                                        if(_loc28_ || param2)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc27_ && param1))
                                                                           {
                                                                              §§push(_loc7_ + _loc11_.x);
                                                                              if(!_loc27_)
                                                                              {
                                                                                 §§push(_loc12_.x);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop() * (§§pop() + §§pop()));
                                                                                    if(_loc28_ || param2)
                                                                                    {
                                                                                       addr386:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc27_ && param2))
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          §§push(_loc4_);
                                                                                          if(_loc28_ || this)
                                                                                          {
                                                                                             addr410:
                                                                                             §§push(_loc18_);
                                                                                             §§push(_loc9_);
                                                                                             if(!(_loc27_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc28_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc8_ + _loc11_.y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr433:
                                                                                                      §§push(§§pop() + _loc12_.y);
                                                                                                      if(!(_loc27_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            addr446:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc27_ && _loc3_))
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     addr462:
                                                                                                                     _loc19_ = §§pop();
                                                                                                                     if(!(_loc27_ && param2))
                                                                                                                     {
                                                                                                                        _loc20_ = _loc8_;
                                                                                                                        addr474:
                                                                                                                        §§push(Number(_loc13_));
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           _loc21_ = §§pop();
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 addr483:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    addr486:
                                                                                                                                    _loc22_ = §§pop();
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                    {
                                                                                                                                       addr496:
                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                       addr499:
                                                                                                                                       _loc24_ = _loc16_;
                                                                                                                                       addr501:
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       §§push(0.25);
                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc21_);
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             addr512:
                                                                                                                                             §§push(§§pop() * _loc21_);
                                                                                                                                             §§push(_loc23_);
                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(_loc21_);
                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr534:
                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr540:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr551:
                                                                                                                                                               §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  addr554:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     addr559:
                                                                                                                                                                     §§push(§§pop() * (§§pop() + (§§pop() + §§pop() * §§pop())));
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr566:
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop() + §§pop() * _loc19_));
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc25_ = §§pop();
                                                                                                                                                                                 addr580:
                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                 §§push(0.25);
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc22_);
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr593:
                                                                                                                                                                                       §§push(_loc24_);
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                          if(_loc28_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr614:
                                                                                                                                                                                                §§push(_loc24_);
                                                                                                                                                                                                §§push(_loc24_);
                                                                                                                                                                                                if(_loc28_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr622:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr630:
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr633:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr643:
                                                                                                                                                                                                               §§push(_loc20_ * _loc24_);
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr646:
                                                                                                                                                                                                                  §§push(§§pop() * (§§pop() + (§§pop() + §§pop())));
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr654:
                                                                                                                                                                                                                     §§push(0.5 * _loc20_);
                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr660:
                                                                                                                                                                                                                        _loc26_ = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                        addr659:
                                                                                                                                                                                                                        addr658:
                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr663:
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr666:
                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                              §§push(_loc25_);
                                                                                                                                                                                                                              if(_loc28_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr677:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop() * (§§pop() + _loc26_));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr677);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc6_ = Number(§§pop());
                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc10_++;
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr677);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr659);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr677);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr654);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr646);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr643);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr654);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr643);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr646);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr643);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr677);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr580);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr658);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr643);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr654);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr622);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr643);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr554);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr559);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr554);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr551);
                                                                                                                                                }
                                                                                                                                                §§goto(addr540);
                                                                                                                                             }
                                                                                                                                             §§goto(addr614);
                                                                                                                                          }
                                                                                                                                          §§goto(addr630);
                                                                                                                                       }
                                                                                                                                       §§goto(addr566);
                                                                                                                                       addr497:
                                                                                                                                       addr498:
                                                                                                                                       addr495:
                                                                                                                                    }
                                                                                                                                    §§goto(addr580);
                                                                                                                                 }
                                                                                                                                 §§goto(addr666);
                                                                                                                              }
                                                                                                                              §§goto(addr660);
                                                                                                                           }
                                                                                                                           §§goto(addr497);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr501);
                                                                                                                  }
                                                                                                                  §§goto(addr496);
                                                                                                               }
                                                                                                               §§goto(addr462);
                                                                                                            }
                                                                                                            §§goto(addr660);
                                                                                                         }
                                                                                                         §§goto(addr566);
                                                                                                      }
                                                                                                      §§goto(addr512);
                                                                                                   }
                                                                                                   §§goto(addr593);
                                                                                                }
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                          §§goto(addr486);
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    §§goto(addr499);
                                                                                 }
                                                                                 §§goto(addr633);
                                                                              }
                                                                              §§goto(addr559);
                                                                           }
                                                                           §§goto(addr630);
                                                                        }
                                                                        §§goto(addr534);
                                                                     }
                                                                     §§goto(addr663);
                                                                  }
                                                                  §§goto(addr559);
                                                               }
                                                               §§goto(addr462);
                                                            }
                                                            §§goto(addr566);
                                                         }
                                                         §§goto(addr498);
                                                      }
                                                      §§goto(addr386);
                                                   }
                                                   §§goto(addr474);
                                                }
                                                §§goto(addr314);
                                             }
                                             §§goto(addr462);
                                          }
                                          §§goto(addr496);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr495);
                              }
                              §§goto(addr483);
                           }
                           §§goto(addr496);
                        }
                        §§goto(addr242);
                     }
                     §§goto(addr348);
                  }
                  §§goto(addr199);
               }
               if(!(_loc27_ && param2))
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc28_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§_-zT§ = §§pop();
                  if(!_loc27_)
                  {
                     §§push(_loc3_);
                     if(!(_loc27_ && _loc3_))
                     {
                        §§push(1);
                        if(_loc28_ || param1)
                        {
                           §§push(_loc5_);
                           if(!_loc27_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc28_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc28_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc28_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc28_ || param1)
                                          {
                                             addr748:
                                             §§push(§§pop() * (1 / _loc5_));
                                             if(!(_loc27_ && param1))
                                             {
                                                addr760:
                                                _loc4_ = Number(§§pop());
                                                if(!_loc27_)
                                                {
                                                   addr763:
                                                   param1.center.Set(_loc3_,_loc4_);
                                                   if(!_loc27_)
                                                   {
                                                      addr770:
                                                      §§push(param1);
                                                      §§push(param2);
                                                      if(_loc28_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * _loc6_);
                                                      }
                                                      §§pop().§_-Lx§ = §§pop();
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr760);
                                       }
                                       return;
                                    }
                                    §§goto(addr760);
                                 }
                              }
                           }
                        }
                        §§goto(addr748);
                     }
                     §§goto(addr760);
                  }
                  §§goto(addr763);
               }
               §§goto(addr770);
            }
         }
         addr116:
         param1.§_-zT§ = 0;
         param1.§_-Lx§ = 0;
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
         var _loc5_:b2Vec2 = b2Math.§_-P4§(param3.R,param1);
         §§push(param2);
         if(_loc27_ || param1)
         {
            §§push(§§pop() - b2Math.§_-Ly§(param1,param3.position));
            if(!(_loc28_ && param3))
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<Number> = new Vector.<Number>();
            var _loc8_:int = 0;
            var _loc9_:int = -1;
            var _loc10_:int = -1;
            var _loc11_:* = false;
            if(_loc27_)
            {
               _loc12_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc12_);
               if(!_loc28_)
               {
                  §§push(this.§_-Wz§);
                  if(_loc27_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc28_)
                        {
                           var _loc26_:* = _loc8_;
                           if(_loc27_ || param3)
                           {
                              §§push(0);
                              if(!(_loc28_ && param1))
                              {
                                 §§push(_loc26_);
                                 if(_loc27_ || param2)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc28_ && param2))
                                       {
                                          §§push(0);
                                          if(_loc28_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr302:
                                          §§push(1);
                                          if(!_loc28_)
                                          {
                                             addr305:
                                          }
                                       }
                                       addr310:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§goto(addr181);
                                          case 1:
                                             addr220:
                                             §§push(_loc9_);
                                             if(!_loc28_)
                                             {
                                                §§push(-1);
                                                if(!_loc28_)
                                                {
                                                   addr227:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc27_)
                                                      {
                                                         addr230:
                                                         §§push(this.§_-Wz§);
                                                         if(_loc27_)
                                                         {
                                                            addr234:
                                                            §§push(§§pop() - 1);
                                                            if(!(_loc28_ && param1))
                                                            {
                                                               addr242:
                                                               _loc9_ = §§pop();
                                                               addr252:
                                                               break;
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         else
                                                         {
                                                            addr247:
                                                            §§push(§§pop() - 1);
                                                            if(!_loc28_)
                                                            {
                                                               addr250:
                                                               _loc10_ = §§pop();
                                                               §§goto(addr252);
                                                            }
                                                            var _loc13_:int = §§pop() % this.§_-Wz§;
                                                            §§push(_loc10_);
                                                            if(!(_loc28_ && this))
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(!(_loc28_ && this))
                                                               {
                                                                  §§push(§§pop() % this.§_-Wz§);
                                                               }
                                                               §§push(int(§§pop()));
                                                            }
                                                            var _loc14_:* = §§pop();
                                                            §§push(0 - _loc7_[_loc9_]);
                                                            if(_loc27_ || param1)
                                                            {
                                                               §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                               if(_loc27_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(0 - _loc7_[_loc10_]);
                                                            if(!_loc28_)
                                                            {
                                                               §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                               if(!_loc28_)
                                                               {
                                                                  addr390:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc16_:* = §§pop();
                                                               §§push(§§findproperty(b2Vec2));
                                                               §§push(this.§_-Ui§[_loc9_].x * (1 - _loc15_));
                                                               if(_loc27_ || param2)
                                                               {
                                                                  §§push(this.§_-Ui§[_loc13_].x * _loc15_);
                                                                  if(_loc27_)
                                                                  {
                                                                     addr426:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(this.§_-Ui§[_loc9_].y * (1 - _loc15_));
                                                                     if(!(_loc28_ && param3))
                                                                     {
                                                                        addr442:
                                                                        §§push(§§pop() + this.§_-Ui§[_loc13_].y * _loc15_);
                                                                     }
                                                                     var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                     §§push(§§findproperty(b2Vec2));
                                                                     §§push(this.§_-Ui§[_loc10_].x * (1 - _loc16_));
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(this.§_-Ui§[_loc14_].x * _loc16_);
                                                                        if(_loc27_)
                                                                        {
                                                                           addr475:
                                                                           §§push(§§pop() + §§pop());
                                                                           §§push(this.§_-Ui§[_loc10_].y * (1 - _loc16_));
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr486:
                                                                              §§push(§§pop() + this.§_-Ui§[_loc14_].y * _loc16_);
                                                                           }
                                                                           var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                           var _loc19_:* = Number(0);
                                                                           var _loc20_:b2Vec2 = new b2Vec2();
                                                                           var _loc21_:b2Vec2 = this.§_-Ui§[_loc13_];
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(_loc13_);
                                                                              if(_loc27_ || param3)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!(_loc28_ && this))
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(!(_loc28_ && param2))
                                                                                    {
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr836:
                                                                                                   param4.SetV(b2Math.§_-Y9§(param3,_loc20_));
                                                                                                   §§push(_loc19_);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(_loc27_ || this)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() % this.§_-Wz§);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(_loc28_ && param1)
                                                                                                                  {
                                                                                                                     break loop3;
                                                                                                                  }
                                                                                                                  _loc22_ = _loc18_;
                                                                                                                  if(_loc27_ || this)
                                                                                                                  {
                                                                                                                     addr604:
                                                                                                                     §§push(0.5);
                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc21_.x);
                                                                                                                        if(!(_loc28_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc17_.x);
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc22_.y);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_.y);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc28_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             addr647:
                                                                                                                                             §§push(_loc21_.y);
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                addr651:
                                                                                                                                                §§push(_loc17_.y);
                                                                                                                                                if(_loc27_ || this)
                                                                                                                                                {
                                                                                                                                                   addr681:
                                                                                                                                                   addr660:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr668:
                                                                                                                                                      §§push(_loc22_.x);
                                                                                                                                                      if(!(_loc28_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - _loc17_.x);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr689:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc28_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!(_loc28_ && this))
                                                                                                                                                         {
                                                                                                                                                            _loc25_ = §§pop();
                                                                                                                                                            if(_loc28_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop1;
                                                                                                                                                            }
                                                                                                                                                            addr713:
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr726:
                                                                                                                                                            _loc19_ = §§pop();
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                               §§push(_loc20_.x);
                                                                                                                                                               if(!(_loc28_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                  if(_loc27_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_.x);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_.x);
                                                                                                                                                                        if(!(_loc28_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           addr766:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc22_.x);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              addr772:
                                                                                                                                                                              §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                                              addr771:
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                              addr775:
                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                              §§push(_loc20_.y);
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc25_);
                                                                                                                                                                                 if(!(_loc28_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc17_.y);
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc21_.y);
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr802:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc22_.y);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc28_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr810:
                                                                                                                                                                                             §§push(§§pop() / 3);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                          continue loop1;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr802);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr810);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr802);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr771);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr766);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr771);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr772);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr775);
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc25_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr726);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr726);
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr726);
                                                                                                                                                }
                                                                                                                                                §§goto(addr681);
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr681);
                                                                                                                                          }
                                                                                                                                          §§goto(addr689);
                                                                                                                                       }
                                                                                                                                       §§goto(addr668);
                                                                                                                                    }
                                                                                                                                    §§goto(addr660);
                                                                                                                                 }
                                                                                                                                 §§goto(addr681);
                                                                                                                              }
                                                                                                                              §§goto(addr647);
                                                                                                                           }
                                                                                                                           §§goto(addr651);
                                                                                                                        }
                                                                                                                        §§goto(addr647);
                                                                                                                     }
                                                                                                                     §§goto(addr726);
                                                                                                                  }
                                                                                                                  §§goto(addr713);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc22_ = this.§_-Ui§[_loc12_];
                                                                                                               }
                                                                                                               §§goto(addr604);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr843:
                                                                                                      return §§pop();
                                                                                                      addr546:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc28_ && param2))
                                                                                                      {
                                                                                                         _loc12_ = §§pop();
                                                                                                         if(_loc28_ && param1)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§goto(addr576);
                                                                                                      }
                                                                                                      §§goto(addr579);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr843);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    _loc20_.§_-6z§(1 / _loc19_);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr836);
                                                                                 }
                                                                                 §§goto(addr576);
                                                                              }
                                                                              §§goto(addr546);
                                                                           }
                                                                           §§goto(addr836);
                                                                        }
                                                                        §§goto(addr486);
                                                                     }
                                                                     §§goto(addr475);
                                                                  }
                                                                  §§goto(addr442);
                                                               }
                                                               §§goto(addr426);
                                                            }
                                                            §§goto(addr390);
                                                         }
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§_-Wz§);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                break loop0;
                                             }
                                             §§goto(addr234);
                                       }
                                       §§push(_loc9_);
                                       break;
                                    }
                                    §§push(1);
                                    if(_loc27_ || this)
                                    {
                                       addr301:
                                       if(§§pop() === _loc26_)
                                       {
                                          §§goto(addr302);
                                       }
                                       else
                                       {
                                          §§push(2);
                                       }
                                       §§goto(addr310);
                                    }
                                    §§goto(addr305);
                                 }
                              }
                              §§goto(addr301);
                           }
                           §§goto(addr302);
                        }
                        §§goto(addr220);
                     }
                     else
                     {
                        _loc7_[_loc12_] = b2Math.§_-Ly§(_loc5_,this.§_-Ui§[_loc12_]) - _loc6_;
                        if(_loc28_ && this)
                        {
                           continue;
                        }
                        _loc23_ = _loc7_[_loc12_] < -Number.MIN_VALUE;
                        §§push(_loc12_);
                        §§push(0);
                        if(_loc27_)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc28_ && this))
                              {
                                 if(_loc23_)
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(_loc12_ - 1);
                                       if(_loc27_ || param2)
                                       {
                                          _loc9_ = §§pop();
                                          _loc8_++;
                                          if(_loc27_ || this)
                                          {
                                             addr160:
                                             §§push(Boolean(_loc23_));
                                             if(_loc27_)
                                             {
                                                _loc11_ = §§pop();
                                                if(!_loc28_)
                                                {
                                                   _loc12_++;
                                                   continue;
                                                }
                                                §§goto(addr310);
                                             }
                                             else
                                             {
                                                §§goto(addr181);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr230);
                                          }
                                       }
                                       else
                                       {
                                          addr149:
                                          _loc10_ = §§pop();
                                          addr148:
                                          if(_loc27_)
                                          {
                                             _loc8_++;
                                             if(_loc28_ && param3)
                                             {
                                                continue;
                                             }
                                             §§goto(addr160);
                                          }
                                       }
                                       §§goto(addr310);
                                    }
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    if(_loc11_)
                                    {
                                       if(_loc27_)
                                       {
                                          §§push(_loc12_);
                                          if(_loc27_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(!_loc28_)
                                             {
                                                §§goto(addr148);
                                             }
                                             else
                                             {
                                                §§goto(addr242);
                                             }
                                          }
                                          §§goto(addr149);
                                       }
                                       else
                                       {
                                          §§goto(addr220);
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr310);
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr227);
                  }
                  break;
               }
               addr181:
               if(_loc11_)
               {
                  _loc24_ = new b2MassData();
                  if(!_loc28_)
                  {
                     this.ComputeMass(_loc24_,1);
                     if(!(_loc28_ && this))
                     {
                        param4.SetV(b2Math.§_-Y9§(param3,_loc24_.center));
                        if(!_loc28_)
                        {
                           return _loc24_.§_-zT§;
                        }
                     }
                  }
               }
               return 0;
            }
            §§push(§§pop() + §§pop());
            if(_loc28_ && param2)
            {
            }
            §§goto(addr247);
         }
         §§goto(addr53);
      }
      
      public function §_-m9§() : int
      {
         return this.§_-Wz§;
      }
      
      public function §_-JC§() : Vector.<b2Vec2>
      {
         return this.§_-Ui§;
      }
      
      public function §_-hV§() : Vector.<b2Vec2>
      {
         return this.§_-3s§;
      }
      
      public function §_-xy§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-Ui§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§_-Ui§[0].y * param1.y);
            if(_loc6_)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_ || this)
               {
                  if(§§pop() < this.§_-Wz§)
                  {
                     §§push(this.§_-Ui§[_loc4_].x * param1.x);
                     if(!_loc7_)
                     {
                        §§push(this.§_-Ui§[_loc4_].y * param1.y);
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc7_ && _loc2_))
                           {
                              addr72:
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_ && param1)
                                    {
                                    }
                                    addr130:
                                    _loc3_ = §§pop();
                                    if(!(_loc7_ && this))
                                    {
                                       addr138:
                                       _loc4_++;
                                       if(_loc7_ && _loc2_)
                                       {
                                          addr164:
                                          §§push(_loc2_);
                                       }
                                       continue;
                                       break;
                                    }
                                    continue;
                                 }
                                 addr99:
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc6_ || _loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§push(_loc5_);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§goto(addr130);
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr130);
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr99);
                              §§push(_loc3_);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr164);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr38);
      }
      
      public function §_-cH§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-Ui§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§_-Ui§[0].y * param1.y);
            if(!_loc7_)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               while(§§pop() < this.§_-Wz§)
               {
                  §§push(this.§_-Ui§[_loc4_].x * param1.x);
                  if(_loc6_)
                  {
                     §§push(this.§_-Ui§[_loc4_].y * param1.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc7_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_ || this)
                           {
                              addr87:
                              §§push(§§pop());
                              if(_loc6_ || param1)
                              {
                                 _loc5_ = §§pop();
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr104:
                                    if(§§pop() > _loc3_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue;
                                             }
                                          }
                                          _loc2_ = §§pop();
                                          if(_loc7_ && this)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                       }
                                       addr130:
                                       _loc3_ = §§pop();
                                       if(!(_loc6_ || this))
                                       {
                                          break;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr104);
                           }
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr87);
               }
               addr152:
               return this.§_-Ui§[_loc2_];
            }
         }
         §§goto(addr38);
      }
      
      private function §_-Xa§() : Boolean
      {
         return false;
      }
      
      private function §_-HZ§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§_-Ui§.length;
         while(_loc2_ < param1)
         {
            this.§_-Ui§[_loc2_] = new b2Vec2();
            if(!_loc4_)
            {
               this.§_-3s§[_loc2_] = new b2Vec2();
               if(!_loc3_)
               {
                  break;
               }
            }
            _loc2_++;
            if(_loc4_)
            {
               break;
            }
         }
      }
   }
}
