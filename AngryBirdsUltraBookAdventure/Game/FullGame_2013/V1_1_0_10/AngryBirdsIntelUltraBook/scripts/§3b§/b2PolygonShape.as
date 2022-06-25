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
         if(_loc2_)
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
         if(_loc1_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §3r§ = b2internal::=&;
               addr117:
               while(true)
               {
                  this.§=!S§ = new b2Vec2();
                  addr112:
                  while(true)
                  {
                     this.§0!k§ = new Vector.<b2Vec2>();
                     addr106:
                     addr66:
                     while(true)
                     {
                        this.§0!%§ = new Vector.<b2Vec2>();
                     }
                     if(_loc1_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            § !c§ = b2Settings.b2_polygonRadius;
            §§goto(addr59);
         }
         §§goto(addr43);
      }
      
      public static function §4g§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || b2PolygonShape)
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
         if(_loc4_ || param2)
         {
            _loc3_.§<F§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §!!@§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§%P§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §-C§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         if(_loc18_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!(_loc17_ && b2PolygonShape))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(_loc18_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!(_loc17_ && param2))
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!(_loc17_ && b2PolygonShape))
               {
                  §§push(_loc9_.x);
                  if(!(_loc17_ && b2PolygonShape))
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr428:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr295:
                        if(_loc17_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(§§pop() * §§pop());
                        if(!_loc17_)
                        {
                           if(_loc18_ || _loc3_)
                           {
                              addr313:
                              §§push(Number(§§pop()));
                              loop29:
                              for(; !(_loc17_ && b2PolygonShape); if(_loc17_ && b2PolygonShape)
                              {
                                 continue;
                              },§§goto(addr265))
                              {
                                 if(_loc18_)
                                 {
                                    _loc16_ = §§pop();
                                    loop30:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc17_)
                                       {
                                          if(!_loc17_)
                                          {
                                             addr211:
                                             §§push(_loc16_);
                                             if(_loc18_ || param1)
                                             {
                                                if(!(_loc17_ && param2))
                                                {
                                                   addr226:
                                                   if(_loc18_)
                                                   {
                                                      if(!(_loc17_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            continue loop29;
                                                         }
                                                         addr248:
                                                         if(!(_loc17_ && param2))
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               continue loop29;
                                                            }
                                                            addr412:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               addr413:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr414:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        addr416:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_.x);
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              addr405:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr406:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr407:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       addr408:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc10_.y);
                                                                                          break loop30;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr391:
                                                                              if(_loc17_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 _loc14_ = §§pop();
                                                                                 addr400:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    break loop29;
                                                                                 }
                                                                                 addr285:
                                                                                 if(!(_loc18_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc15_);
                                                                                 while(!_loc17_)
                                                                                 {
                                                                                    §§goto(addr295);
                                                                                    §§goto(addr211);
                                                                                 }
                                                                                 while(_loc18_ || param1)
                                                                                 {
                                                                                    if(!(_loc17_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(!(_loc17_ && param2))
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * _loc13_);
                                                                                             addr359:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr360:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc18_ || b2PolygonShape)
                                                                                                   {
                                                                                                      if(!(_loc18_ || param1))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         addr376:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0.5);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            §§goto(addr285);
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                         §§goto(addr248);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(!_loc17_)
                                                                                                      {
                                                                                                         if(_loc18_ || b2PolygonShape)
                                                                                                         {
                                                                                                            §§goto(addr391);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr406);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                      addr382:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr428);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                       }
                                                                                       continue loop8;
                                                                                       addr349:
                                                                                    }
                                                                                    §§goto(addr405);
                                                                                    §§goto(addr406);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr382);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr413);
                                                   }
                                                   §§goto(addr357);
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr349);
                                       }
                                       §§goto(addr248);
                                       addr161:
                                       if(!(_loc18_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(!(_loc17_ && b2PolygonShape))
                                       {
                                          if(_loc18_)
                                          {
                                             loop36:
                                             do
                                             {
                                                §§push(_loc3_);
                                                §§push(_loc16_);
                                                if(_loc18_)
                                                {
                                                   §§push(§§pop() * _loc7_);
                                                }
                                                §§pop().§9""§(§§pop());
                                                do
                                                {
                                                   _loc8_++;
                                                }
                                                while(!_loc18_);
                                                
                                                if(!_loc17_)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   else
                                                   {
                                                      loop33:
                                                      while(!(_loc17_ && b2PolygonShape))
                                                      {
                                                         _loc3_.§2!3§(_loc9_);
                                                         loop34:
                                                         while(!(_loc17_ && _loc3_))
                                                         {
                                                            _loc3_.§2!3§(_loc10_);
                                                            while(true)
                                                            {
                                                               if(!(_loc18_ || param1))
                                                               {
                                                                  continue loop34;
                                                               }
                                                               §§goto(addr161);
                                                               continue loop36;
                                                            }
                                                            continue loop30;
                                                         }
                                                         while(!(_loc17_ && param1))
                                                         {
                                                            while(true)
                                                            {
                                                               _loc3_.§2!3§(new b2Vec2(_loc5_,_loc6_));
                                                               continue loop33;
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                         addr182:
                                                         §§goto(addr416);
                                                      }
                                                   }
                                                   §§goto(addr408);
                                                }
                                                §§goto(addr154);
                                             }
                                             while(false);
                                             
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr412);
                                          }
                                          addr430:
                                       }
                                       §§goto(addr400);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr381);
                                       addr265:
                                       §§push(_loc6_);
                                       if(_loc17_ && b2PolygonShape)
                                       {
                                          continue;
                                       }
                                       _loc4_ = §§pop();
                                       §§goto(addr273);
                                    }
                                 }
                                 §§goto(addr414);
                              }
                              while(true)
                              {
                                 if(_loc18_ || _loc3_)
                                 {
                                    §§goto(addr334);
                                    §§push(_loc14_);
                                 }
                                 break;
                                 §§goto(addr313);
                              }
                              addr313:
                              while(true)
                              {
                                 _loc11_ = §§pop();
                                 §§goto(addr430);
                              }
                              addr429:
                           }
                           §§goto(addr360);
                        }
                        §§goto(addr313);
                     }
                  }
                  §§goto(addr429);
               }
               §§goto(addr280);
            }
            §§goto(addr101);
         }
         if(!(_loc17_ && param1))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc18_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(_loc18_)
            {
               addr463:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc17_ && b2PolygonShape))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr463);
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
         if(!(_loc27_ && param2))
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
               if(!(_loc27_ && param1))
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
                     addr110:
                  }
                  _loc4_++;
               }
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr110);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(_loc26_ || param2)
         {
            §§push(1);
            if(!_loc27_)
            {
               _loc4_ = §§pop();
               if(!_loc27_)
               {
                  addr131:
                  loop97:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1113:
                     while(§§pop() <= param3)
                     {
                        _loc7_ = _loc5_[int(_loc4_ - 1)];
                        if(!_loc27_)
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
                                                                     while(!_loc27_)
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
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr877:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   addr878:
                                                                                                   while(!_loc27_)
                                                                                                   {
                                                                                                      §§push(Number(Number.MAX_VALUE));
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                loop43:
                                                                                                while(_loc26_ || b2PolygonShape)
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   loop44:
                                                                                                   while(!_loc27_)
                                                                                                   {
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         loop45:
                                                                                                         while(_loc26_ || b2PolygonShape)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc26_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop46:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc26_ || param3)
                                                                                                                  {
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!(_loc27_ && param2))
                                                                                                                        {
                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                           {
                                                                                                                              if(!(_loc27_ && param3))
                                                                                                                              {
                                                                                                                                 if(_loc26_ || b2PolygonShape)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    loop63:
                                                                                                                                    while(_loc26_ || param3)
                                                                                                                                    {
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       loop47:
                                                                                                                                       while(_loc26_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(0.95);
                                                                                                                                          loop48:
                                                                                                                                          for(; _loc26_; while(!(_loc27_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr311);
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr776);
                                                                                                                                                   }
                                                                                                                                                   addr740:
                                                                                                                                                   §§goto(addr741);
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr680);
                                                                                                                                             }
                                                                                                                                             §§goto(addr430);
                                                                                                                                          })
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             loop49:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop50:
                                                                                                                                                while(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      loop51:
                                                                                                                                                      while(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc27_ && param3)
                                                                                                                                                         {
                                                                                                                                                            continue loop7;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                         loop52:
                                                                                                                                                         for(; _loc26_; if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                         {
                                                                                                                                                            continue loop46;
                                                                                                                                                         })
                                                                                                                                                         {
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               addr536:
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop53:
                                                                                                                                                                  while(!(_loc27_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                        if(_loc26_ || b2PolygonShape)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.R);
                                                                                                                                                                              loop54:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().col1);
                                                                                                                                                                                 loop55:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    loop56:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       loop57:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.R);
                                                                                                                                                                                          if(_loc27_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().col1);
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                loop58:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_ && param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop51;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc26_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param1.R);
                                                                                                                                                                                                         loop59:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().col2);
                                                                                                                                                                                                            addr363:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                               addr364:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  addr365:
                                                                                                                                                                                                                  while(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc26_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1.R);
                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop57;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop54;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop59;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr374:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr878);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr424:
                                                                                                                                                                                                                  while(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                        addr430:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop64:
                                                                                                                                                                                                                  while(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc26_ || param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           loop66:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                              addr695:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr835:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop47;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                          break loop50;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                                                                       break loop58;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr835:
                                                                                                                                                                                                                                    addr613:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr818:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr800:
                                                                                                                                                                                                                                    _loc20_ = _loc5_[_loc17_].y - _loc7_.y;
                                                                                                                                                                                                                                    addr801:
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr776:
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr785:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc21_ = §§pop();
                                                                                                                                                                                                                                                addr827:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                   addr726:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         break loop48;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop22;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(!(_loc27_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr835);
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   break loop53;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                                addr827:
                                                                                                                                                                                                                                                addr790:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr877);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr851:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                                                                                                                             break loop64;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr785:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr700:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc26_ || param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop17;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop() < _loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop46;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr709:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              addr677:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr680:
                                                                                                                                                                                                                                    if(§§pop() < _loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop64;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr613);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr835);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop20;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr827);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr610:
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr569:
                                                                                                                                                                                                      _loc17_++;
                                                                                                                                                                                                      break loop51;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr695);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                            addr858:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                               loop31:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  addr711:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop31;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr675);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr790);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr764:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr700);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr241:
                                                                                                                                                                                                            if(_loc27_ && param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc24_ = §§pop();
                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop97;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc27_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop96:
                                                                                                                                                                                                               while(!(_loc27_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                        if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_ && param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop50;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc26_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop63;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr181:
                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                    if(!(_loc27_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr194:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop52;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr276:
                                                                                                                                                                                                                                             while(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop44;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                                                                   §§goto(addr181);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr311:
                                                                                                                                                                                                                                          while(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr237:
                                                                                                                                                                                                                                       addr237:
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr241);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                          continue loop96;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr289);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr774);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr708);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr194);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr237);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr801);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr392);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr365);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr258:
                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr587:
                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                  break loop52;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                                                                  break loop57;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr258);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr358:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr276);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                      addr871:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!(_loc26_ || param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   loop37:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                                                                      addr822:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() < param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                               addr815:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr424);
                                                                                                                                                                                                            §§goto(addr818);
                                                                                                                                                                                                            addr575:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr851);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr392:
                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop56;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop55;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1109:
                                                                                                                                                                                          §§push(param1.center);
                                                                                                                                                                                          §§push(_loc7_.x);
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1100:
                                                                                                                                                                                             §§push(§§pop() + (_loc25_.col1.x * _loc23_ + _loc25_.col2.x * _loc24_));
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1110:
                                                                                                                                                                                       §§push(param1.center);
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc25_.col1);
                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                         if(_loc26_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1036:
                                                                                                                                                                                                                  §§push(_loc25_.col2);
                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1048:
                                                                                                                                                                                                                        if(!(_loc27_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc24_);
                                                                                                                                                                                                                              if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1071:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1087:
                                                                                                                                                                                                                                       §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                       addr1088:
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr991:
                                                                                                                                                                                                                                          param1.§4!;§.x = 0.5 * (_loc15_ - _loc13_);
                                                                                                                                                                                                                                          addr983:
                                                                                                                                                                                                                                          addr992:
                                                                                                                                                                                                                                          addr987:
                                                                                                                                                                                                                                          addr989:
                                                                                                                                                                                                                                          addr988:
                                                                                                                                                                                                                                          addr990:
                                                                                                                                                                                                                                          §§push(param1.§4!;§);
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                   if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc26_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr973:
                                                                                                                                                                                                                                                               §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr983);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1111:
                                                                                                                                                                                                                                                                        _loc4_++;
                                                                                                                                                                                                                                                                        continue loop97;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1088);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr992);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr987);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr989);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr988);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr990);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr973);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr991);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr973);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr986:
                                                                                                                                                                                                                                          §§goto(addr986);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1110);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1100);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1071);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1100);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1071);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1100);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1048);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1100);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1036);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1100);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1109);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1087);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1109);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr667:
                                                                                                                                                                           if(!(_loc26_ || param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr822);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop2;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop10;
                                                                                                                                                                           addr576:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop97;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr774);
                                                                                                                                                                  }
                                                                                                                                                                  addr741:
                                                                                                                                                                  if(_loc27_ && b2PolygonShape)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr827);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               continue loop5;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  break loop47;
                                                                                                                                                               }
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr726);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc27_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                  §§goto(addr610);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr785);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr677);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr684);
                                                                                                                                                      }
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr575);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr719);
                                                                                                                                                      }
                                                                                                                                                      while(!(_loc27_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc27_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr645);
                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr858);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr709);
                                                                                                                                                      addr630:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1111);
                                                                                                                                                }
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   continue loop19;
                                                                                                                                                }
                                                                                                                                                if(_loc27_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop16;
                                                                                                                                                }
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr630);
                                                                                                                                                }
                                                                                                                                                §§goto(addr576);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             break loop63;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(!_loc27_)
                                                                                                                                       {
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                §§goto(addr667);
                                                                                                                                             }
                                                                                                                                             §§goto(addr815);
                                                                                                                                          }
                                                                                                                                          §§goto(addr730);
                                                                                                                                       }
                                                                                                                                       §§goto(addr711);
                                                                                                                                    }
                                                                                                                                    §§push(_loc20_);
                                                                                                                                    break loop45;
                                                                                                                                    addr499:
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              §§goto(addr800);
                                                                                                                           }
                                                                                                                           §§goto(addr591);
                                                                                                                        }
                                                                                                                        §§goto(addr507);
                                                                                                                     }
                                                                                                                     §§goto(addr800);
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  if(_loc27_ && param2)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     if(_loc27_ && param3)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     §§goto(addr237);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr429);
                                                                                                               }
                                                                                                               §§goto(addr711);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr499);
                                                                                                         }
                                                                                                         if(_loc26_ || param3)
                                                                                                         {
                                                                                                            §§goto(addr740);
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§goto(addr775);
                                                                                                      }
                                                                                                      §§goto(addr774);
                                                                                                   }
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      §§goto(addr587);
                                                                                                   }
                                                                                                   §§goto(addr569);
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
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc27_ && b2PolygonShape)
                                                {
                                                   continue;
                                                }
                                                _loc22_ = §§pop();
                                                §§goto(addr764);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr374);
                        continue loop97;
                     }
                  }
               }
               return;
            }
            §§goto(addr1113);
         }
         §§goto(addr131);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc3_ || _loc2_)
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
            if(_loc5_)
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
            if(_loc5_ || this)
            {
               this.§=!S§.SetV(_loc2_.§=!S§);
               while(true)
               {
                  this.§]D§ = _loc2_.§]D§;
               }
               addr127:
            }
            loop1:
            do
            {
               this.§-k§(this.§]D§);
               while(_loc5_)
               {
                  _loc3_ = 0;
                  if(_loc5_)
                  {
                     continue loop1;
                  }
               }
               §§goto(addr127);
            }
            while(_loc4_);
            
            loop3:
            while(true)
            {
               if(_loc3_ < this.§]D§)
               {
                  this.§0!k§[_loc3_].SetV(_loc2_.§0!k§[_loc3_]);
                  if(_loc5_)
                  {
                     while(true)
                     {
                        this.§0!%§[_loc3_].SetV(_loc2_.§0!%§[_loc3_]);
                        if(!_loc5_)
                        {
                           break;
                        }
                        _loc3_++;
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                     addr62:
                  }
               }
            }
         }
      }
      
      public function §<,§(param1:Array, param2:Number = 0) : void
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
         if(!(_loc7_ && _loc3_))
         {
            §§push(param2);
            if(_loc8_)
            {
               if(§§pop() == 0)
               {
                  if(_loc8_ || param2)
                  {
                     addr241:
                     param2 = param1.length;
                  }
                  while(true)
                  {
                     loop3:
                     while(_loc8_ || this)
                     {
                        this.§-k§(param2);
                        do
                        {
                           _loc3_ = 0;
                        }
                        while(_loc7_ && _loc3_);
                        
                        if(!_loc8_)
                        {
                           continue;
                        }
                        addr194:
                        if(_loc7_ && _loc3_)
                        {
                           while(true)
                           {
                              this.§]D§ = param2;
                              continue loop3;
                              §§goto(addr194);
                           }
                           addr225:
                        }
                        loop5:
                        while(true)
                        {
                           §§push(_loc3_);
                           while(true)
                           {
                              §§push(this.§]D§);
                              loop7:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc7_)
                                       {
                                          _loc3_ = §§pop();
                                          while(!(_loc7_ && param1))
                                          {
                                             if(!_loc8_)
                                             {
                                                _loc3_++;
                                                break;
                                                addr181:
                                             }
                                             while(true)
                                             {
                                                addr319:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                }
                                             }
                                          }
                                          continue loop5;
                                          addr147:
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§]D§);
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr333);
                                             }
                                             §§push(_loc3_);
                                             loop14:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                loop15:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc7_ && param2)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§push(1);
                                                      if(!_loc8_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(§§pop() < this.§]D§)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc7_ && param2)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!(_loc8_ || this))
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     addr85:
                                                                     §§push(int(§§pop() + §§pop()));
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr111:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  addr122:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr124);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc6_ = b2Math.§%M§(this.§0!k§[_loc5_],this.§0!k§[_loc4_]);
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        b2Settings.b2Assert(_loc6_.§%!]§() > Number.MIN_VALUE);
                                                                        this.§0!%§[_loc3_].SetV(b2Math.§66§(_loc6_,1));
                                                                        addr318:
                                                                     }
                                                                     addr269:
                                                                     this.§0!%§[_loc3_].Normalize();
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           _loc3_++;
                                                                           if(_loc8_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr269);
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr269);
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     addr310:
                                                                     §§goto(addr310);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr147);
                                                               }
                                                               §§goto(addr124);
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      §§goto(addr85);
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             continue loop7;
                                          }
                                          this.§=!S§ = §-C§(this.§0!k§,this.§]D§);
                                          addr333:
                                          return;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§0!k§[_loc3_].SetV(param1[_loc3_]);
                                 }
                                 §§goto(addr181);
                              }
                           }
                        }
                     }
                  }
                  addr242:
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  §§goto(addr225);
                  §§goto(addr242);
               }
            }
         }
         §§goto(addr241);
      }
      
      public function §@!w§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§]D§ = 4;
         }
         while(true)
         {
            this.§-k§(4);
            loop1:
            while(true)
            {
               this.§0!k§[0].Set(-param1,-param2);
               addr173:
               while(true)
               {
                  this.§0!k§[1].Set(param1,-param2);
                  continue loop1;
               }
            }
         }
      }
      
      public function § X§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            this.§]D§ = 4;
            while(true)
            {
               this.§-k§(4);
            }
            addr169:
         }
         loop1:
         while(true)
         {
            this.§0!k§[0].Set(-param1,-param2);
            while(true)
            {
               this.§0!k§[1].Set(param1,-param2);
               continue loop1;
               addr125:
               loop4:
               while(_loc7_ || this)
               {
                  this.§0!k§[3].Set(-param1,param2);
                  loop5:
                  while(true)
                  {
                     this.§0!%§[0].Set(0,-1);
                     loop6:
                     while(true)
                     {
                        this.§0!%§[1].Set(1,0);
                        loop7:
                        while(true)
                        {
                           if(!(_loc7_ || this))
                           {
                              continue loop6;
                           }
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              this.§0!%§[2].Set(0,1);
                              while(!_loc8_)
                              {
                                 while(true)
                                 {
                                    this.§0!%§[3].Set(-1,0);
                                    continue loop5;
                                    addr37:
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc5_:b2Transform;
                                    (_loc5_ = new b2Transform()).position = param3;
                                    if(_loc7_ || param2)
                                    {
                                       _loc5_.R.Set(param4);
                                    }
                                    var _loc6_:int = 0;
                                    addr191:
                                    if(_loc6_ >= this.§]D§)
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          if(!(_loc7_ || this))
                                          {
                                             this.§0!%§[_loc6_] = b2Math.§[!%§(_loc5_.R,this.§0!%§[_loc6_]);
                                             _loc6_++;
                                             addr215:
                                             if(!_loc8_)
                                             {
                                                §§goto(addr191);
                                             }
                                             addr241:
                                             §§goto(addr241);
                                             addr255:
                                          }
                                          return;
                                       }
                                       §§goto(addr215);
                                    }
                                    this.§0!k§[_loc6_] = b2Math.§%!r§(_loc5_,this.§0!k§[_loc6_]);
                                    §§goto(addr255);
                                 }
                                 continue loop7;
                              }
                              continue loop1;
                              addr65:
                           }
                           §§goto(addr169);
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
      }
      
      public function §%P§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]D§ = 2;
            while(true)
            {
               this.§-k§(2);
               addr218:
               while(true)
               {
                  this.§0!k§[0].SetV(param1);
               }
               addr40:
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
         }
         loop2:
         while(true)
         {
            this.§0!k§[1].SetV(param2);
            loop3:
            while(!_loc3_)
            {
               §§push(this.§=!S§);
               loop4:
               while(true)
               {
                  §§push(0.5);
                  loop5:
                  while(true)
                  {
                     §§push(param1.x);
                     if(_loc4_ || param1)
                     {
                        §§push(param2.x);
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr140:
                           §§push(param2.y);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr150:
                              §§push(§§pop() * (§§pop() + §§pop()));
                              if(!(_loc3_ && param1))
                              {
                                 §§pop().y = §§pop();
                                 loop10:
                                 for(; _loc4_ || this; if(!(_loc4_ || this))
                                 {
                                    continue;
                                 },§§goto(addr71))
                                 {
                                    this.§0!%§[0] = b2Math.§66§(b2Math.§%M§(param2,param1),1);
                                    loop11:
                                    while(true)
                                    {
                                       this.§0!%§[0].Normalize();
                                       loop12:
                                       while(_loc4_)
                                       {
                                          this.§0!%§[1].x = -this.§0!%§[0].x;
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop11;
                                             }
                                             continue loop12;
                                             addr71:
                                             this.§0!%§[1].y = -this.§0!%§[0].y;
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr40);
                                          }
                                          continue loop10;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                        }
                     }
                     addr193:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr194:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop4;
                        }
                     }
                  }
               }
            }
            §§goto(addr218);
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(_loc11_ || param2)
         {
            §§push(§§pop() - param1.position.x);
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(_loc11_)
         {
            §§push(§§pop() - param1.position.y);
            if(!(_loc12_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(_loc11_)
         {
            §§push(_loc4_.col1.x);
            if(!(_loc12_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!_loc12_)
               {
                  addr75:
                  §§push(_loc6_);
                  if(_loc11_ || param2)
                  {
                     addr83:
                     §§push(§§pop() * _loc4_.col1.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     addr90:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     §§push(_loc4_.col2.x);
                     if(!_loc12_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc11_)
                        {
                           addr103:
                           §§push(_loc6_);
                           if(_loc11_ || param1)
                           {
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr133);
                     }
                     addr115:
                     §§push(§§pop() + §§pop() * _loc4_.col2.y);
                     if(_loc11_ || param2)
                     {
                        addr133:
                        §§push(Number(§§pop()));
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
                        if(!_loc12_)
                        {
                           §§push(_loc7_);
                           if(_loc11_)
                           {
                              §§push(_loc3_.x);
                              if(_loc11_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc12_)
                                 {
                                    addr157:
                                    §§push(Number(§§pop()));
                                    if(!(_loc12_ && this))
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc11_ || param1)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc12_)
                                          {
                                             addr178:
                                             §§push(§§pop() - _loc3_.y);
                                             if(!_loc12_)
                                             {
                                                addr181:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc6_ = §§pop();
                                          addr183:
                                          _loc3_ = this.§0!%§[_loc9_];
                                          if(!_loc11_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc3_.x);
                                          if(!_loc12_)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc11_)
                                                {
                                                   §§push(_loc3_.y);
                                                   if(!(_loc12_ && this))
                                                   {
                                                      §§push(§§pop() * _loc6_);
                                                      if(_loc11_)
                                                      {
                                                         addr214:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr217:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               addr235:
                                                               §§push(§§pop());
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  addr243:
                                                                  _loc10_ = §§pop();
                                                               }
                                                               addr245:
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc9_++;
                                                               continue;
                                                            }
                                                         }
                                                         §§push(0);
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr183);
                     }
                     return false;
                  }
                  §§goto(addr103);
               }
               §§goto(addr90);
            }
            §§goto(addr83);
         }
         §§goto(addr75);
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
         §§push(param2.§%[§);
         if(_loc21_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc20_)
         {
            §§push(param2.p1);
            if(!(_loc20_ && param3))
            {
               §§push(§§pop().x);
               if(_loc21_)
               {
                  §§push(param3.position);
                  if(!_loc20_)
                  {
                     §§push(§§pop().x);
                     if(!_loc20_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || param2)
                           {
                              _loc6_ = §§pop();
                              if(!_loc20_)
                              {
                                 addr84:
                                 §§push(param2.p1.y);
                                 if(!_loc20_)
                                 {
                                    addr90:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc20_ && param2))
                                    {
                                       addr98:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(_loc21_ || this)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(_loc21_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc20_ && param3))
                                    {
                                       §§push(_loc7_);
                                       if(_loc21_)
                                       {
                                          addr128:
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc21_)
                                       {
                                          addr135:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(_loc6_);
                                       if(_loc21_)
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(!(_loc20_ && param2))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc21_ || param3)
                                             {
                                                §§push(_loc7_);
                                                if(!_loc20_)
                                                {
                                                   addr161:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc20_ && this))
                                                {
                                                   addr174:
                                                   var _loc11_:Number = §§pop();
                                                   if(_loc21_)
                                                   {
                                                      §§push(param2.p2);
                                                      if(!_loc20_)
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
                                                                  if(_loc21_ || param3)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc20_ && param3)
                                                                     {
                                                                     }
                                                                     addr227:
                                                                     _loc7_ = Number(§§pop());
                                                                     _loc8_ = param3.R;
                                                                     §§push(_loc6_);
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(_loc8_.col1.x);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 addr251:
                                                                                 §§push(§§pop() * _loc8_.col1.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc21_ || param2)
                                                                              {
                                                                                 addr264:
                                                                                 var _loc12_:Number = §§pop();
                                                                                 §§push(_loc6_);
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    §§push(_loc8_.col2.x);
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc21_ || this)
                                                                                          {
                                                                                             addr294:
                                                                                             §§push(§§pop() * _loc8_.col2.y);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr301:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(_loc12_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() - _loc10_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr310:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          §§push(_loc13_);
                                                                                          if(!(_loc20_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() - _loc11_);
                                                                                             if(_loc21_)
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
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(this.§]D§);
                                                                                                if(_loc21_ || param1)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      addr825:
                                                                                                      if(!(_loc20_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         break;
                                                                                                      }
                                                                                                      param1.fraction = _loc4_;
                                                                                                      _loc8_ = param3.R;
                                                                                                      _loc9_ = this.§0!%§[_loc16_];
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(param1.normal);
                                                                                                         loop50:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_.col1);
                                                                                                            addr938:
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
                                                                                                                     if(_loc20_ && param1)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        addr927:
                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              return true;
                                                                                                                              addr933:
                                                                                                                           }
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr950:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr949:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        continue loop50;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr943:
                                                                                                               }
                                                                                                               addr944:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  addr946:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr947:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr949);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr933);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push((_loc9_ = this.§0!k§[_loc17_]).x);
                                                                                                      if(!(_loc20_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(_loc21_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc20_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(!(_loc20_ && param3))
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     if(!(_loc20_ && this))
                                                                                                                     {
                                                                                                                        addr384:
                                                                                                                        §§push(§§pop() - _loc11_);
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           addr393:
                                                                                                                           _loc7_ = Number(§§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr393);
                                                                                                                  }
                                                                                                                  §§push((_loc9_ = this.§0!%§[_loc17_]).x);
                                                                                                                  if(!(_loc20_ && param3))
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(_loc21_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.x);
                                                                                                                                             loop43:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                loop29:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop24:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.y);
                                                                                                                                                      addr779:
                                                                                                                                                      loop48:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         addr780:
                                                                                                                                                         loop45:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop30:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr785:
                                                                                                                                                                  loop49:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     loop34:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                        loop42:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           addr788:
                                                                                                                                                                           loop44:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 loop38:
                                                                                                                                                                                 while(!(_loc20_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr758:
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    loop9:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc21_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                       loop10:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          addr768:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop12:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   loop13:
                                                                                                                                                                                                   while(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                      loop14:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr715:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                               addr587:
                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                               if(!(_loc21_ || param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop45;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr601:
                                                                                                                                                                                                                        if(_loc21_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr617:
                                                                                                                                                                                                                                    if(!(_loc20_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc21_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc20_ && param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                addr645:
                                                                                                                                                                                                                                                loop36:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc21_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr675:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr692:
                                                                                                                                                                                                                                                            addr692:
                                                                                                                                                                                                                                                            loop20:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  if(_loc20_ && param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop36;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_ && param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc21_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr587);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr715);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr580:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop42;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc21_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           loop4:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              addr738:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                 addr739:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_ || param3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             loop8:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop36;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr660:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop38;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr670:
                                                                                                                                                                                                                                                                                                         break loop20;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr793:
                                                                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                                                                             addr456:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          §§goto(addr617);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr792:
                                                                                                                                                                                                                                                                                       §§goto(addr793);
                                                                                                                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                                                                                                                       addr702:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                                                                          break loop38;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr789:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr791:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop13;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr792);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc20_ && param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr510);
                                                                                                                                                                                                                                                                        §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop36;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop34;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr738);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr645);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr702);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr668);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr793);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr608:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr675);
                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr720);
                                                                                                                                                                                                                        addr719:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr692);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr793);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr719);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr670);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr791);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr790:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr789);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr791);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr775:
                                                                                                                                          }
                                                                                                                                          §§goto(addr720);
                                                                                                                                       }
                                                                                                                                       §§goto(addr775);
                                                                                                                                    }
                                                                                                                                    §§goto(addr785);
                                                                                                                                 }
                                                                                                                                 §§goto(addr788);
                                                                                                                              }
                                                                                                                              §§goto(addr780);
                                                                                                                           }
                                                                                                                           §§goto(addr717);
                                                                                                                        }
                                                                                                                        §§goto(addr790);
                                                                                                                     }
                                                                                                                     §§goto(addr779);
                                                                                                                  }
                                                                                                                  §§goto(addr785);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                }
                                                                                                addr817:
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   return false;
                                                                                                }
                                                                                                if(_loc21_ || param1)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr825);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr817);
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                              }
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        §§goto(addr251);
                                                                     }
                                                                     §§goto(addr264);
                                                                     addr226:
                                                                  }
                                                                  _loc6_ = §§pop();
                                                                  if(_loc21_)
                                                                  {
                                                                     addr212:
                                                                     §§push(param2.p2.y);
                                                                     if(_loc21_)
                                                                     {
                                                                        addr218:
                                                                        §§push(§§pop() - param3.position.y);
                                                                        if(!(_loc20_ && param3))
                                                                        {
                                                                           §§goto(addr226);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                   }
                                                   §§goto(addr212);
                                                }
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr135);
                           }
                        }
                        §§goto(addr98);
                     }
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr84);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§0!k§[0];
         §§push(param2.position.x);
         if(!(_loc13_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(_loc12_ || param1)
            {
               §§push(_loc4_.x);
               if(_loc12_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc13_)
                  {
                     addr62:
                     §§push(_loc3_.col2.x);
                     if(!(_loc13_ && _loc3_))
                     {
                        addr75:
                        §§push(§§pop() + §§pop() * _loc4_.y);
                     }
                     §§goto(addr75);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc12_ || param2)
                  {
                     addr85:
                     var _loc5_:Number = §§pop();
                     §§push(param2.position.y);
                     if(!(_loc13_ && param1))
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc13_ && _loc3_))
                        {
                           §§push(_loc4_.x);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc13_ && _loc3_))
                              {
                                 addr127:
                                 §§push(_loc3_.col2.y);
                                 if(_loc12_)
                                 {
                                    addr123:
                                    §§push(§§pop() * _loc4_.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc12_)
                                 {
                                    addr130:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(_loc5_);
                                 if(_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(_loc6_);
                                 if(!(_loc13_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 var _loc9_:int = 1;
                                 while(_loc9_ < this.§]D§)
                                 {
                                    _loc4_ = this.§0!k§[_loc9_];
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       §§push(param2.position);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr528:
                                          while(true)
                                          {
                                             §§push(_loc3_.col1);
                                             addr530:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr531:
                                                while(true)
                                                {
                                                   §§push(_loc4_.x);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         addr538:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                         }
                                                      }
                                                      addr536:
                                                   }
                                                   addr539:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.y);
                                                      addr541:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr542:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr543:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr544:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr545:
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
                                    §§goto(addr178);
                                 }
                                 if(!_loc13_)
                                 {
                                    §§push(param1.§>h§);
                                    if(!_loc13_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() - b2internal:: !c);
                                          if(!(_loc13_ && this))
                                          {
                                             §§goto(addr569);
                                          }
                                          §§goto(addr628);
                                       }
                                       addr569:
                                       §§pop().x = §§pop();
                                       if(!_loc13_)
                                       {
                                          addr618:
                                          §§push(param1.§>h§);
                                          §§push(_loc6_);
                                          if(_loc12_ || _loc3_)
                                          {
                                             addr628:
                                             §§pop().y = §§pop() - b2internal:: !c;
                                             while(true)
                                             {
                                                §§push(param1.§^!z§);
                                                loop56:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   addr612:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop() + b2internal:: !c;
                                                      continue loop56;
                                                   }
                                                }
                                             }
                                             addr629:
                                          }
                                          §§goto(addr628);
                                       }
                                       return;
                                    }
                                    §§goto(addr618);
                                 }
                                 §§goto(addr629);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr85);
               }
               §§goto(addr75);
            }
            §§goto(addr62);
         }
         §§goto(addr85);
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
            if(this.§]D§ != 2)
            {
               §§push(0);
               if(!(_loc27_ && param2))
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
               if(!(_loc27_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(_loc28_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(_loc28_ || param1)
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
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§]D§)
               {
                  _loc11_ = this.§0!k§[_loc10_];
                  if(!_loc27_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§]D§ ? this.§0!k§[int(_loc10_ + 1)] : this.§0!k§[0];
                     if(!(_loc27_ && this))
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
                                          addr1139:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr1140:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr1141:
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   addr1142:
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      addr1128:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr1129:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc27_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc15_ = §§pop();
                                                               addr1134:
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_.y);
                                                                  addr1120:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     addr1121:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        addr1122:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr1123:
                                                                           while(true)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              addr1124:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 addr1092:
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
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop13;
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
                           if(_loc27_ && param1)
                           {
                              continue;
                           }
                           §§goto(addr969);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr1078);
                  }
                  §§goto(addr241);
               }
               if(_loc28_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc28_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§&q§ = §§pop();
                  if(!(_loc27_ && _loc3_))
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
                     loop135:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop136:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr1269:
                           addr1251:
                           addr1252:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc28_ || this)
                              {
                                 if(!(_loc28_ || param1))
                                 {
                                    continue loop136;
                                 }
                                 §§push(1);
                                 if(_loc28_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc28_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc28_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc27_ && this)
                                          {
                                             break;
                                          }
                                          if(_loc28_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          continue loop135;
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
                              break;
                           }
                           _loc4_ = §§pop();
                           while(_loc27_)
                           {
                              §§goto(addr1269);
                              §§goto(addr1251);
                           }
                        }
                     }
                     addr1170:
                  }
                  while(true)
                  {
                     param1.center.Set(_loc3_,_loc4_);
                     do
                     {
                        §§push(param1);
                        §§push(param2);
                        if(!(_loc27_ && _loc3_))
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().§6_§ = §§pop();
                     }
                     while(!_loc28_);
                     
                     if(!_loc27_)
                     {
                        break;
                     }
                     §§goto(addr1252);
                  }
                  return;
               }
               §§goto(addr1170);
            }
         }
         loop137:
         while(true)
         {
            §§push(param1.center);
            loop138:
            while(true)
            {
               §§push(0.5);
               if(!(_loc27_ && param2))
               {
                  §§push(§§pop() * (this.§0!k§[0].x + this.§0!k§[1].x));
               }
               loop139:
               while(true)
               {
                  §§pop().x = §§pop();
                  while(true)
                  {
                     §§push(param1.center);
                     if(!(_loc28_ || param2))
                     {
                        break;
                     }
                     §§push(0.5);
                     if(!(_loc27_ && this))
                     {
                        continue loop139;
                     }
                     addr123:
                     §§pop().y = §§pop();
                     if(_loc28_ || _loc3_)
                     {
                        param1.§&q§ = 0;
                        addr83:
                        if(!_loc27_)
                        {
                           param1.§6_§ = 0;
                           if(_loc27_)
                           {
                              §§goto(addr83);
                           }
                           return;
                        }
                        continue loop137;
                     }
                  }
                  continue loop138;
               }
            }
         }
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
         if(!_loc27_)
         {
            §§push(§§pop() - b2Math.§#D§(param1,param3.position));
            if(_loc28_)
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
         if(!(_loc27_ && param3))
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
               if(_loc28_ || param2)
               {
                  if(§§pop() < §§pop())
                  {
                     _loc7_[_loc12_] = b2Math.§#D§(_loc5_,this.§0!k§[_loc12_]) - _loc6_;
                     if(_loc28_ || param3)
                     {
                        §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                        loop1:
                        while(true)
                        {
                           _loc23_ = §§pop();
                           if(_loc28_ || this)
                           {
                              §§push(_loc12_);
                              if(_loc28_)
                              {
                                 §§push(0);
                                 if(_loc28_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc27_)
                                       {
                                          §§push(_loc23_);
                                          while(!§§pop())
                                          {
                                             §§push(_loc11_);
                                             if(!(_loc27_ && param1))
                                             {
                                                if(_loc27_)
                                                {
                                                   continue;
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc27_)
                                                   {
                                                      if(_loc28_ || param2)
                                                      {
                                                         if(_loc27_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc12_);
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc28_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc28_ || this)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     _loc8_++;
                                                                     if(!(_loc28_ || param2))
                                                                     {
                                                                        addr86:
                                                                        break;
                                                                        addr86:
                                                                     }
                                                                     loop7:
                                                                     do
                                                                     {
                                                                        §§push(_loc23_);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc27_ && param2)
                                                                           {
                                                                           }
                                                                           addr268:
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc27_ && this)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                           if(_loc28_ || param3)
                                                                           {
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr371);
                                                                        }
                                                                        if(!_loc28_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        _loc11_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(!_loc27_)
                                                                           {
                                                                              _loc12_++;
                                                                              if(!_loc27_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    if(!(_loc28_ || this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(int(§§pop()));
                                                                                    if(!(_loc28_ || param2))
                                                                                    {
                                                                                       addr325:
                                                                                       return §§pop();
                                                                                    }
                                                                                 }
                                                                                 _loc9_ = §§pop();
                                                                                 addr201:
                                                                                 addr464:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_++;
                                                                                    if(!(_loc28_ || param2))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                                 addr464:
                                                                                 §§push(_loc9_);
                                                                                 if(_loc28_ || param2)
                                                                                 {
                                                                                    addr473:
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!(_loc27_ && param2))
                                                                                    {
                                                                                       addr484:
                                                                                       §§goto(addr485);
                                                                                       §§push(int(§§pop() % this.§]D§));
                                                                                    }
                                                                                    §§goto(addr484);
                                                                                 }
                                                                                 §§goto(addr485);
                                                                              }
                                                                              addr360:
                                                                              §§push(int(§§pop()));
                                                                              if(!(_loc28_ || this))
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              _loc9_ = §§pop();
                                                                              if(_loc27_)
                                                                              {
                                                                              }
                                                                              §§goto(addr371);
                                                                              addr181:
                                                                           }
                                                                        }
                                                                     }
                                                                     while(false);
                                                                     
                                                                     continue loop0;
                                                                  }
                                                                  addr353:
                                                                  §§push(this.§]D§);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§goto(addr360);
                                                                     }
                                                                     §§goto(addr484);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §§goto(addr268);
                                                                        case 1:
                                                                     }
                                                                     §§goto(addr464);
                                                                  }
                                                                  addr463:
                                                               }
                                                               addr337:
                                                               §§push(-1);
                                                               if(!(_loc27_ && param2))
                                                               {
                                                                  addr345:
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc28_ || param1)
                                                                     {
                                                                        §§goto(addr353);
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  §§push(this.§]D§);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(_loc28_ || param3)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        if(_loc27_)
                                                                        {
                                                                           §§goto(addr463);
                                                                        }
                                                                        addr387:
                                                                        _loc10_ = §§pop();
                                                                        if(_loc28_ || param2)
                                                                        {
                                                                           §§goto(addr371);
                                                                        }
                                                                        §§goto(addr464);
                                                                     }
                                                                  }
                                                                  break loop0;
                                                               }
                                                               §§goto(addr473);
                                                            }
                                                            §§goto(addr484);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr86);
                                             }
                                             §§goto(addr268);
                                          }
                                          §§push(_loc11_);
                                          if(!_loc27_)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr181);
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr345);
                              }
                              §§goto(addr485);
                           }
                           break;
                        }
                        §§push(_loc9_);
                        if(_loc28_ || param2)
                        {
                           §§goto(addr337);
                        }
                        §§goto(addr353);
                     }
                     addr276:
                     _loc24_ = new b2MassData();
                     if(_loc28_ || param1)
                     {
                        this.ComputeMass(_loc24_,1);
                     }
                     param4.SetV(b2Math.§%!r§(param3,_loc24_.center));
                     return _loc24_.§&q§;
                  }
                  if(!(_loc27_ && param2))
                  {
                     §§push(_loc8_);
                     if(!(_loc27_ && this))
                     {
                        break;
                     }
                     addr485:
                     var _loc13_:* = §§pop();
                     §§push(_loc10_);
                     if(!_loc27_)
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
                     if(!(_loc27_ && param3))
                     {
                        §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                        if(!(_loc27_ && param2))
                        {
                           addr535:
                           §§push(Number(§§pop()));
                        }
                        var _loc15_:* = §§pop();
                        §§push(0 - _loc7_[_loc10_]);
                        if(_loc28_ || param1)
                        {
                           §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                           if(_loc28_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc16_:* = §§pop();
                        §§push(§§findproperty(b2Vec2));
                        §§push(this.§0!k§[_loc9_].x * (1 - _loc15_));
                        if(_loc28_ || param3)
                        {
                           §§push(this.§0!k§[_loc13_].x * _loc15_);
                           if(_loc28_)
                           {
                              addr588:
                              §§push(§§pop() + §§pop());
                              §§push(this.§0!k§[_loc9_].y * (1 - _loc15_));
                              if(_loc28_ || param2)
                              {
                                 §§push(§§pop() + this.§0!k§[_loc13_].y * _loc15_);
                              }
                           }
                           var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                           §§push(§§findproperty(b2Vec2));
                           §§push(this.§0!k§[_loc10_].x * (1 - _loc16_));
                           if(_loc28_ || param2)
                           {
                              §§push(this.§0!k§[_loc14_].x * _loc16_);
                              if(!_loc27_)
                              {
                                 addr642:
                                 §§push(§§pop() + §§pop());
                                 §§push(this.§0!k§[_loc10_].y * (1 - _loc16_));
                                 if(!_loc27_)
                                 {
                                    addr653:
                                    §§push(§§pop() + this.§0!k§[_loc14_].y * _loc16_);
                                 }
                                 var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 var _loc19_:Number = 0;
                                 var _loc20_:b2Vec2 = new b2Vec2();
                                 var _loc21_:b2Vec2 = this.§0!k§[_loc13_];
                                 if(_loc28_)
                                 {
                                    §§push(_loc13_);
                                    if(_loc28_ || param1)
                                    {
                                       §§push(int(§§pop()));
                                       if(!(_loc27_ && this))
                                       {
                                          _loc12_ = §§pop();
                                          if(_loc28_)
                                          {
                                             addr698:
                                             loop19:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                addr1007:
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(_loc14_);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc28_)
                                                         {
                                                            break;
                                                         }
                                                         addr1024:
                                                         return _loc19_;
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
                                                            if(_loc28_)
                                                            {
                                                               §§push(§§pop() % this.§]D§);
                                                               if(!(_loc27_ && this))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc28_ || param1))
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc28_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     _loc12_ = §§pop();
                                                                     if(_loc27_ && param1)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     §§push(_loc14_);
                                                                     if(_loc27_ && param2)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        addr752:
                                                                        if(!(_loc28_ || param2))
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc22_ = _loc18_;
                                                                           if(!(_loc27_ && this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(0.5);
                                                                                 if(_loc28_ || param1)
                                                                                 {
                                                                                    §§push(_loc21_.x);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(_loc17_.x);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             addr795:
                                                                                             §§push(_loc22_.y);
                                                                                             if(_loc28_ || this)
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
                                                                                                         addr814:
                                                                                                         §§push(_loc21_.y);
                                                                                                         if(!(_loc27_ && param3))
                                                                                                         {
                                                                                                            addr823:
                                                                                                            §§push(_loc17_.y);
                                                                                                            if(!(_loc27_ && this))
                                                                                                            {
                                                                                                               addr843:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  addr835:
                                                                                                                  §§push(_loc22_.x);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     addr839:
                                                                                                                     §§push(§§pop() - _loc17_.x);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc27_ && param3))
                                                                                                               {
                                                                                                                  addr851:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc27_ && param1)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr1001:
                                                                                                                     _loc19_ = §§pop();
                                                                                                                     addr1000:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc20_);
                                                                                                                           §§push(_loc20_.x);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc25_);
                                                                                                                              if(_loc28_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(_loc17_.x);
                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc21_.x);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                       {
                                                                                                                                          addr969:
                                                                                                                                          §§push(§§pop() + _loc22_.x);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc27_ && param3))
                                                                                                                                       {
                                                                                                                                          addr981:
                                                                                                                                          §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                          addr980:
                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                             §§push(_loc20_);
                                                                                                                                             §§push(_loc20_.y);
                                                                                                                                             if(!(_loc28_ || param3))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(_loc25_);
                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(_loc17_.y);
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_.y);
                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr914:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc22_.y);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr922:
                                                                                                                                                         §§push(§§pop() / 3);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr914);
                                                                                                                                             }
                                                                                                                                             §§goto(addr922);
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
                                                                                                                                          _loc21_ = _loc22_;
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       §§goto(addr980);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr969);
                                                                                                                              }
                                                                                                                              §§goto(addr980);
                                                                                                                           }
                                                                                                                           §§goto(addr981);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1002:
                                                                                                                  }
                                                                                                                  _loc25_ = §§pop();
                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc19_);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        addr997:
                                                                                                                        §§push(§§pop() + _loc25_);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§goto(addr1000);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1001);
                                                                                                                  }
                                                                                                                  §§goto(addr1002);
                                                                                                               }
                                                                                                               §§goto(addr997);
                                                                                                            }
                                                                                                            §§goto(addr843);
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§goto(addr835);
                                                                                                      }
                                                                                                      §§goto(addr851);
                                                                                                   }
                                                                                                   §§goto(addr823);
                                                                                                }
                                                                                                §§goto(addr839);
                                                                                             }
                                                                                             §§goto(addr843);
                                                                                          }
                                                                                          §§goto(addr814);
                                                                                       }
                                                                                       §§goto(addr843);
                                                                                    }
                                                                                    §§goto(addr795);
                                                                                 }
                                                                                 §§goto(addr1001);
                                                                                 addr770:
                                                                                 _loc22_ = this.§0!k§[_loc12_];
                                                                              }
                                                                              addr776:
                                                                           }
                                                                           §§goto(addr1001);
                                                                           §§goto(addr752);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr770);
                                                                     }
                                                                     §§goto(addr776);
                                                                  }
                                                                  addr732:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr732);
                                                      }
                                                      return §§pop();
                                                   }
                                                   _loc20_.§9""§(1 / _loc19_);
                                                   if(!_loc27_)
                                                   {
                                                      param4.SetV(b2Math.§%!r§(param3,_loc20_));
                                                   }
                                                   §§goto(addr1024);
                                                }
                                             }
                                          }
                                          §§goto(addr759);
                                       }
                                       §§goto(addr1007);
                                    }
                                    §§goto(addr732);
                                 }
                                 §§goto(addr698);
                              }
                              §§goto(addr653);
                           }
                           §§goto(addr642);
                        }
                        §§goto(addr588);
                     }
                     §§goto(addr535);
                  }
                  addr371:
                  §§goto(addr464);
               }
               §§goto(addr473);
            }
            break;
         }
         while(true)
         {
            var _loc26_:* = §§pop();
            if(!_loc27_)
            {
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(_loc26_);
                  if(_loc28_ || param3)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc28_)
                        {
                           §§push(0);
                           if(!(_loc27_ && param1))
                           {
                              addr455:
                              if(!(_loc27_ && param3))
                              {
                                 §§goto(addr353);
                              }
                              break;
                           }
                        }
                        else
                        {
                           addr447:
                           §§push(1);
                           if(_loc27_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc28_ || param2)
                        {
                           §§push(_loc26_);
                        }
                     }
                     §§goto(addr455);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr447);
                  }
                  else
                  {
                     §§push(2);
                  }
               }
               §§goto(addr455);
            }
            §§goto(addr447);
         }
         §§goto(addr473);
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
         if(_loc6_)
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
            if(!(_loc7_ && this))
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc6_)
                  {
                     if(§§pop() >= this.§]D§)
                     {
                        if(_loc6_ || param1)
                        {
                           if(_loc6_)
                           {
                              addr75:
                              §§push(_loc2_);
                              if(!(_loc7_ && param1))
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr182:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                              addr181:
                           }
                           loop7:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc6_ || _loc2_)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr116:
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr124:
                                       §§push(Number(§§pop()));
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                          }
                                          addr132:
                                       }
                                       else
                                       {
                                          addr172:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr176:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                }
                                                addr175:
                                             }
                                             while(§§pop() > §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr181);
                                                §§push(_loc4_);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr172);
                                             §§goto(addr116);
                                          }
                                          addr172:
                                          addr171:
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          _loc4_++;
                                          addr97:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                break loop4;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr171);
                                    §§goto(addr172);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr124);
                           }
                        }
                        §§goto(addr97);
                     }
                     else
                     {
                        §§push(this.§0!k§[_loc4_].x * param1.x);
                        if(!_loc7_)
                        {
                           §§push(this.§0!k§[_loc4_].y * param1.y);
                           if(!(_loc7_ && _loc2_))
                           {
                              §§goto(addr172);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr175);
                        }
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr182);
               }
               §§goto(addr75);
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function §7#§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§0!k§[0].x * param1.x);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
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
            if(!(_loc6_ && this))
            {
               if(!(_loc6_ && this))
               {
                  if(§§pop() >= this.§]D§)
                  {
                     if(_loc7_ || this)
                     {
                        break;
                     }
                     loop1:
                     for(; _loc6_; while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     })
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr117:
                                       §§push(Number(§§pop()));
                                       if(_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                _loc3_ = §§pop();
                                                continue loop2;
                                             }
                                             addr142:
                                             while(true)
                                             {
                                                §§push(this.§0!k§[_loc4_].y * param1.y);
                                                if(_loc7_ || this)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr169:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc7_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr178:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                               }
                                                            }
                                                            addr177:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               break loop3;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(_loc4_);
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               addr184:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr168:
                                                }
                                                §§goto(addr177);
                                             }
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr117);
                              }
                           }
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  §§push(this.§0!k§[_loc4_].x * param1.x);
                  §§goto(addr142);
               }
               §§goto(addr183);
            }
            §§goto(addr184);
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
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  this.§0!%§[_loc2_] = new b2Vec2();
                  while(true)
                  {
                     _loc2_++;
                  }
                  addr71:
                  addr80:
               }
               while(!(_loc4_ || this))
               {
                  §§goto(addr71);
               }
               continue;
            }
            this.§0!k§[_loc2_] = new b2Vec2();
            §§goto(addr80);
         }
      }
   }
}
